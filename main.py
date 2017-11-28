import logging
from flask import Flask, render_template, Response, request, redirect, url_for, jsonify
import pymysql
import json
import datetime

#initializing mysql database connection
db = pymysql.connect("localhost", "hop_owner", "", "hop_to_it")

#initializing app
app = Flask(__name__)

@app.route('/')
def hello():
	return render_template('home.html')

@app.route('/search/')
def search():
	db_cursor = db.cursor()
	# data = db_cursor.fetchone()
	query = request.args('search')
	db_cursor.execute(query)
	headers=[header[0] for header in db_cursor.description] #return headers with values
	data = db_cursor.fetchall()
	json_data=[]
	for attribute in data:
		json_data.append(dict(zip(headers,attribute)))
	# return render_template('brewery_info.html', data=json.dumps(json_data, default=date_handler))
	return render_template('search.html', search=search, data=(json_data))
	# return  jsonify(data)

@app.route('/breweries/')
def breweries():
	db_cursor = db.cursor()
	# data = db_cursor.fetchone()
	db_cursor.execute("Select * from Brewery")
	headers=[header[0] for header in db_cursor.description] #return headers with values
	data = db_cursor.fetchall()
	json_data=[]
	for attribute in data:
		json_data.append(dict(zip(headers,attribute)))
	# return render_template('brewery_info.html', data=json.dumps(json_data, default=date_handler))
	return render_template('breweries.html', data=(json_data))
	# return  jsonify(data)

@app.route('/beers/')
def beers():
	db_cursor = db.cursor()
	# data = db_cursor.fetchone()
	query = """SELECT b.beer_name, b.alcohol_by_volume, b.ibu_rank, b.standard_reference_method, bs.style_name, b.time_of_year_availability_id, pr.price_range, br.name
				FROM beer b INNER JOIN BEER_STYLE bs ON (b.style_id = bs.style_id)
				INNER JOIN PRICE_RANGE pr ON (b.price_range_code = pr.price_range_code)
				INNER JOIN BREWERY br ON (b.brewery_id = br.brewery_id);"""
	db_cursor.execute(query)
	headers=[header[0] for header in db_cursor.description] #return headers with values
	data = db_cursor.fetchall()
	json_data=[]
	for attribute in data:
		json_data.append(dict(zip(headers,attribute)))
	# return render_template('brewery_info.html', data=json.dumps(json_data, default=date_handler))
	return render_template('beers.html', beers=(json_data))
	# return  jsonify(data)

@app.route('/bars/')
def bars():
	db_cursor = db.cursor()
	# data = db_cursor.fetchone()
	query = """SELECT * FROM BAR;"""
	db_cursor.execute(query)
	headers=[header[0] for header in db_cursor.description] #return headers with values
	data = db_cursor.fetchall()
	json_data=[]
	for attribute in data:
		json_data.append(dict(zip(headers,attribute)))
	# return render_template('brewery_info.html', data=json.dumps(json_data, default=date_handler))
	return render_template('bars.html', bars=(json_data))
	# return  jsonify(data)


@app.route('/brewery_info/<brewery>')
def brewery_info(brewery):
	db_cursor = db.cursor()
	query = "Select * from Brewery where name = '{}';".format(brewery)
	db_cursor.execute(query)
	headers=[header[0] for header in db_cursor.description] #return headers with values
	data = db_cursor.fetchall()
	json_data=[]
	for attribute in data:
		json_data.append(dict(zip(headers,attribute)))
	# return render_template('brewery_info.html', data=json.dumps(json_data, default=date_handler))
	return render_template('brewery_info.html', brewery=brewery, data=(json_data))

@app.route('/beers/<brewery>/')
def brewery_beers(brewery):
	# brewery_name = brewery.replace('_', "")
	db_cursor = db.cursor()
	query = """SELECT b.beer_name, b.alcohol_by_volume, b.ibu_rank, b.standard_reference_method, bs.style_name,
			b.time_of_year_availability_id, pr.price_range, br.name
			FROM beer b INNER JOIN BEER_STYLE bs ON (b.style_id = bs.style_id)
			INNER JOIN PRICE_RANGE pr ON (b.price_range_code = pr.price_range_code)
			INNER JOIN BREWERY br ON (b.brewery_id = br.brewery_id)
			WHERE (br.name ='{{brewery}}');""".format(brewery)
	db_cursor.execute(query)
	headers=[header[0] for header in db_cursor.description] #return headers with values
	data = db_cursor.fetchall()
	json_data=[]
	for attribute in data:
		json_data.append(dict(zip(headers,attribute)))
	return render_template('brewery_beers.html', brewery=brewery, beers=(json_data))

def date_handler(attribute):
    # if hasattr(attribute, 'isoformat'):
    #     return str(attribute)
	if isinstance(attribute, datetime.datetime):
		return attribute.isoformat()

@app.route('/<string:page_name>/')
def static_page(page_name):
    return render_template('%s.html' % page_name)

if __name__ == "__main__":
    app.run(debug=True)
