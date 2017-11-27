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
	db_cursor.execute("Select * from Beer")
	headers=[header[0] for header in db_cursor.description] #return headers with values
	data = db_cursor.fetchall()
	json_data=[]
	for attribute in data:
		json_data.append(dict(zip(headers,attribute)))
	# return render_template('brewery_info.html', data=json.dumps(json_data, default=date_handler))
	return render_template('beers.html', data=(json_data))
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

@app.route('/brewery_info/<brewery>/beers')
def brewery_beers(brewery):
	db_cursor = db.cursor()
	beer_id = "Select brewery_id from brewery where name = '{}';".format(brewery)
	query = "Select * from beer where brewery_id = '{}';".format(beer_id)
	db_cursor.execute(query)
	headers=[header[0] for header in db_cursor.description] #return headers with values
	data = db_cursor.fetchall()
	json_data=[]
	for attribute in data:
		json_data.append(dict(zip(headers,attribute)))
	# json_data = "{u'brewery_id': 1, u'beer_id': 01, u'beer_name': 'Spiral Jetty IPA', u'brewery_id': 01}"
	return render_template('beers.html', brewery=brewery, beers=(json_data))

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
