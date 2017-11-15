CREATE TABLE BREWERY
(
	brewery_id INT(30) NOT NULL,
	name VARCHAR(30) NOT NULL,
	date_established DATE,
	phone_number VARCHAR(15),
	website VARCHAR(50),
	city VARCHAR(50),
	country VARCHAR(50),
	state VARCHAR(50),
	zipcode CHAR(12),
	region_id CHAR(9) NOT NULL,
	history_description VARCHAR (100),
	PRIMARY KEY(brewery_id),
	FOREIGN KEY(region_id) REFERENCES REGION(region_id)
);

CREATE TABLE BEER_FOOD
(
	food_id CHAR(10) NOT NULL,
	beer_id CHAR(10) NOT NULL,
	PRIMARY KEY (food_id, beer_id)
	FOREIGN KEY (food_id) REFERENCES FOOD_PAIRING(food_id),
	FOREIGN KEY (beer_id) REFERENCES BEER(beer_id)
);

CREATE TABLE FOOD_PAIRING
(
	food_id CHAR(10) NOT NULL,
	food_type VARCHAR(50),
	PRIMARY KEY(food_id)
);

CREATE TABLE BEER_FOR_SALE
(
	sales_id CHAR(50) NOT NULL,
	beer_id CHAR(10) NOT NULL,
	PRIMARY KEY (sales_id, beer_id),
	FOREIGN KEY (beer_id) REFERENCES BEER(beer_id),
	FOREIGN KEY (sales_id) REFERENCES SALES_LOCATION(sales_id)
);

CREATE TABLE BEER_IN_BARS
(
	bar_id CHAR(50) NOT NULL,
	beer_id CHAR(10) NOT NULL,
	PRIMARY KEY (bar_id, beer_id),
	FOREIGN KEY (bar_id) REFERENCES BAR(bar_id),
	FOREIGN KEY (beer_id) REFERENCES BEER(beer_id)
);

CREATE TABLE SALES_LOCATION
(
	sales_id CHAR(50) NOT NULL,
	name VARCHAR(30) NOT NULL,
	city VARCHAR(50),
	country VARCHAR(50),
	state VARCHAR(50),
	zipcode CHAR(12),
	PRIMARY KEY (sales_id)
);

CREATE TABLE BEER
(
	beer_id CHAR(10) NOT NULL,
	beer_name VARCHAR(30) NOT NULL,
	alcohol_by_volume CHAR(3) NOT NULL,
	ibu_rank VARCHAR(30) NOT NULL,
	standard_reference_method VARCHAR(30) NOT NULL,
	style_id CHAR(9) NOT NULL,
	time_of_year_availability_id VARCHAR(30),
	price_range_code VARCHAR(20),
	brewery_id INT(30) NOT NULL,
	PRIMARY KEY(beer_id),
	FOREIGN KEY (style_id) REFERENCES BEER_STYLE(style_id),
	FOREIGN KEY (brewery_id) REFERENCES BREWERY(brewery_id),
	FOREIGN KEY (price_range_code) REFERENCES PRICE_RANGE(price_range_code)
);

CREATE TABLE BAR
(
	bar_id CHAR(9) NOT NULL,
	bar_name VARCHAR(15) NOT NULL,
	city VARCHAR(30),
	state VARCHAR(30),
	country VARCHAR(30),
	zipcode CHAR(9),
	website_url VARCHAR(30),
	phone_number VARCHAR(15),
	PRIMARY KEY(bar_id)
);

CREATE TABLE BEER_STYLE
(
	style_id CHAR(9) NOT NULL,
	style_name VARCHAR(15) NOT NULL,
	PRIMARY KEY(style_id)
);

CREATE TABLE REGION
(
	region_id CHAR(9) NOT NULL,
	region_name VARCHAR(15) NOT NULL,
	region_states VARCHAR(30),
	PRIMARY KEY(region_id)
);

CREATE TABLE SEASONAL_AVAILABILITY
(
	time_of_year_availability_id CHAR(9) NOT NULL,
	start_date_of_availability VARCHAR(15),
	end_date_of_availability VARCHAR(15),
	PRIMARY KEY(time_of_year_availability_id)
);

CREATE TABLE BEER_FOR_SEASON
(
	beer_id CHAR(10) NOT NULL,
	time_of_year_availability_id CHAR(9) NOT NULL,
	PRIMARY KEY(beer_id, time_of_year_availability_id),
	FOREIGN KEY (beer_id) REFERENCES BEER(beer_id),
	FOREIGN KEY (time_of_year_availability_id) REFERENCES SEASONAL_AVAILABILITY(time_of_year_availability_id)
);

CREATE TABLE PERSON
(
	username VARCHAR(22) NOT NULL,
	email VARCHAR(30) NOT NULL,
	name VARCHAR(30) NOT NULL,
	phone_number VARCHAR(15),
	PRIMARY KEY (username)
);

CREATE TABLE PRICE_RANGE
(
	price_range_code INT(9) NOT NULL,
	price_range VARCHAR (9) NOT NULL,
	PRIMARY KEY (price_range_code)
);

CREATE TABLE LIKES
(
	username VARCHAR(22) NOT NULL,
	beer_id CHAR(10) NOT NULL,
	PRIMARY KEY (person_id, beer_id),
	FOREIGN KEY (beer_id) REFERENCES BEER(beer_id),
	FOREIGN KEY (username) REFERENCES PERSON(username)
);

INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id, history_description) VALUES
(0001, 'Wasatch_Brewery', 1986, 801-783-1127, 'www.wasatchbeers.com', 'Salt_Lake_City', 'United_States', 'Utah', 84111, 01, 'This Brewery was founded in 1986 to satisfy the most discerning beer enthusiasts. “Where''s the beer? Where are the breweries?” Those were among the first thoughts Greg Schirf had after moving to Utah from Milwaukee in the early 80''s. Incredibly, drinking and brewing were all but forbidden. Greg took matters into his own hands and did what any self-respecting midwesterner would do: He started a brewery. Wasatch was the very first brewery in Utah – and one of the first craft brewers in all of the U.S. – brewing award-winning brews since 1986.');

INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id, history_description) VALUES
(0002, 'Epic_Brewery', 2008, 801-906-0123, 'www.epicbrewing.com', 'Salt_Lake_City', 'United_States', 'Utah', 84111, 01, 'David Cole and Peter Erickson are the founders and co-owners of Epic Brewing Company. Cole and Erickson, originally from California, started an international aquaculture company in Utah in 1992. In 2008, Utah law changed allowing these two entrepreneurs to pursue their longtime dream of opening a strong beer microbrewery in Utah, like those they frequented in the Golden State.');

--
-- Dumping data for table 'BEER'
--

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id VALUES
(001, 'Spiral_Jetty_IPA', '6.6%', '60', '69', '001', 01, '01', 0002);

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id VALUES
(002, 'Devastator', '8%', '60', '69', '002', 02, '02', 0001);

--
-- Dumping data for table 'PRICE_RANGE'
--

INSERT INTO PRICE_RANGE(price_range_code, price, price_range) VALUES ('1', '1-3USD');
INSERT INTO PRICE_RANGE(price_range_code, price, price_range) VALUES ('2', '3-6USD');
INSERT INTO PRICE_RANGE(price_range_code, price, price_range) VALUES ('3', '6-9USD');
INSERT INTO PRICE_RANGE(price_range_code, price, price_range) VALUES ('4', '10++USD');


--
-- Dumping data for table 'PERSON'
--

INSERT INTO PERSON (username, email, name, phone_number) VALUES
('thomasE', 'mannsverk21@gmail.com', 'Thomas Eliassen', '801111111');

INSERT INTO PERSON (username, email, name, phone_number) VALUES
('bridgerf', 'bef0926@westminstercollege.edu', 'Bridger Fisher', '8012222222');

--
-- Dumping data for table 'SEASONAL_AVAILABILITY'
--

INSERT INTO SEASONAL_AVAILABILITY(time_of_year_availability_id, start_date_of_availability, end_date_of_availability) VALUES (001, 'March', 'June');

INSERT INTO SEASONAL_AVAILABILITY(time_of_year_availability_id, start_date_of_availability, end_date_of_availability) VALUES (002, 'June', 'December');

--
-- Dumping data for table 'REGION'
--

INSERT INTO REGION(region_id, region_name, region_states) VALUES (001, 'Western Mountain Region', 'Utah, Colorado, Nevada, New Mexico, Idaho');

INSERT INTO REGION(region_id, region_name, region_states) VALUES (002, 'Eastern Region', 'New York, New Hampsire, Delaware');

--
-- Dumping data for table 'BEER_STYLE'
--

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (001, 'pale_ale');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (002, 'amber_lager');

--
-- Dumping data for table 'BAR'
--

INSERT INTO BAR(bar_id, bar_name, city, state, country, zipcode, website_url, phone_number) VALUES (001, 'Ex-Wives-Place', 'Salt Lake City', 'Utah', 'United States', 84105, 'https://m.facebook.com/X-Wifes-Place-67250768716/', '18015321954');

INSERT INTO BAR(bar_id, bar_name, city, state, country, zipcode, website_url, phone_number) VALUES (002, 'Liquid Joes', 'Salt Lake City', 'Utah', 'United States', 84106, 'http://liquidjoes.net/', '(801) 467-5637');

--
-- Dumping data for table 'BEER_FOOD'
--

INSERT INTO BEER_FOOD(food_id, beer_id) VALUES (001, 001);

INSERT INTO BEER_FOOD(food_id, beer_id) VALUES (002, 002);

--
-- Dumping data for table 'BEER_IN_BARS'
--

INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (001, 001);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (002, 002);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (001, 003);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (001, 004);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (002, 004);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (002, 003);

--
-- Dumping data for table 'BEER_FOR_SALE'
--

INSERT INTO BEER_FOR_SALE(sales_id, beer_id) VALUES (001, 001);

INSERT INTO BEER_FOR_SALE(sales_id, beer_id) VALUES (002, 002);

--
-- Dumping data for table 'FOOD_PAIRING'
--

INSERT INTO FOOD_PAIRING(food_id, food_type) VALUES (001, 'Meat');

INSERT INTO FOOD_PAIRING(food_id, food_type) VALUES (002, 'Dessert');

--
-- Dumping data for table 'SALES_LOCATION'
--

INSERT INTO SALES_LOCATION(sales_id, name, city, country, state, zipcode) VALUES (001, 'Smiths', 'Salt_Lake_City', 'United_States', 'Utah', 84111);

INSERT INTO SALES_LOCATION(sales_id, name, city, country, state, zipcode) VALUES (002, 'State_Liquor_Store', 'Salt_Lake_City', 'United_States', 'Utah', 84111);

--
-- Dumping data for table 'BEER_FOR_SEASON'
--

INSERT INTO BEER_FOR_SEASON(beer_id, time_of_year_availability_id) VALUES (001, 01);

INSERT INTO BEER_FOR_SEASON(beer_id, time_of_year_availability_id) VALUES (002, 02);

--
-- Dumping data for table 'LIKES'
--

INSERT INTO LIKES(username, beer_id) VALUES ('thomasE', 01);

INSERT INTO LIKES(username, beer_id) VALUES ('bridgerf', 01);
