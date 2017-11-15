/*
--Insert commands
--sales_id    format  sl001...  char
--brewery_id  format  0001...   int
--food_id     format  001...    int
--beer_id     format  001...    int
--bar_id      format  01...     int
--style_id    format  bs001...  char
--region_id   format  001...    int
--username    format  UNKNONW   VARCHAR
--price_range_code  format  1...  int
--time_of_year_availability_id  format  001...  int
*/

/*
--
-- Dumping data for table 'REGION'
--
*/

INSERT INTO REGION(region_id, region_name, region_states) VALUES (001, 'Western Mountain Region', 'Utah, Colorado, Nevada, New Mexico, Idaho');

INSERT INTO REGION(region_id, region_name, region_states) VALUES (002, 'Eastern Region', 'New York, New Hampsire, Delaware');

/*
--
-- Dumping data for table 'BREWERY'
--
*/

INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id, history_description) VALUES
(0001, 'Wasatch_Brewery', '1986-01-01', '801-783-1127', 'www.wasatchbeers.com', 'Salt_Lake_City', 'United_States', 'Utah', '84111', 01, 'This Brewery was founded in 1986 to satisfy the most discerning beer enthusiasts. “Where''s the beer? Where are the breweries?” Those were among the first thoughts Greg Schirf had after moving to Utah from Milwaukee in the early 80''s. Incredibly, drinking and brewing were all but forbidden. Greg took matters into his own hands and did what any self-respecting midwesterner would do: He started a brewery. Wasatch was the very first brewery in Utah – and one of the first craft brewers in all of the U.S. – brewing award-winning brews since 1986.');

INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id, history_description) VALUES
(0002, 'Epic_Brewery', '2008-01-01', '801-906-0123', 'www.epicbrewing.com', 'Salt_Lake_City', 'United_States', 'Utah', '84111', 01, 'David Cole and Peter Erickson are the founders and co-owners of Epic Brewing Company. Cole and Erickson, originally from California, started an international aquaculture company in Utah in 1992. In 2008, Utah law changed allowing these two entrepreneurs to pursue their longtime dream of opening a strong beer microbrewery in Utah, like those they frequented in the Golden State.');
/*
--
-- Dumping data for table 'BEER'
--
*/

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id VALUES
(001, 'Spiral_Jetty_IPA', '6.6%', '60', '69', '001', 01, '01', 0002);

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id VALUES
(002, 'Devastator', '8%', '60', '69', '002', 02, '02', 0001);
/*
--
-- Dumping data for table 'PRICE_RANGE'
--
*/

INSERT INTO PRICE_RANGE(price_range_code, price, price_range) VALUES ('1', '1-3USD');
INSERT INTO PRICE_RANGE(price_range_code, price, price_range) VALUES ('2', '3-6USD');
INSERT INTO PRICE_RANGE(price_range_code, price, price_range) VALUES ('3', '6-9USD');
INSERT INTO PRICE_RANGE(price_range_code, price, price_range) VALUES ('4', '10++USD');

/*
--
-- Dumping data for table 'PERSON'
--
*/

INSERT INTO PERSON (username, email, name, phone_number) VALUES
('thomasE', 'mannsverk21@gmail.com', 'Thomas Eliassen', '801111111');

INSERT INTO PERSON (username, email, name, phone_number) VALUES
('bridgerf', 'bef0926@westminstercollege.edu', 'Bridger Fisher', '8012222222');
/*
--
-- Dumping data for table 'SEASONAL_AVAILABILITY'
--
*/

INSERT INTO SEASONAL_AVAILABILITY(time_of_year_availability_id, start_date_of_availability, end_date_of_availability) VALUES (001, 'March', 'June');

INSERT INTO SEASONAL_AVAILABILITY(time_of_year_availability_id, start_date_of_availability, end_date_of_availability) VALUES (002, 'June', 'December');



/*
--
-- Dumping data for table 'BEER_STYLE'
--
*/

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (001, 'pale_ale');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (002, 'amber_lager');

/*
--
-- Dumping data for table 'BAR'
--
*/

INSERT INTO BAR(bar_id, bar_name, city, state, country, zipcode, website_url, phone_number) VALUES (001, 'Ex-Wives-Place', 'Salt Lake City', 'Utah', 'United States', 84105, 'https://m.facebook.com/X-Wifes-Place-67250768716/', '18015321954');

INSERT INTO BAR(bar_id, bar_name, city, state, country, zipcode, website_url, phone_number) VALUES (002, 'Liquid Joes', 'Salt Lake City', 'Utah', 'United States', 84106, 'http://liquidjoes.net/', '(801) 467-5637');

/*
--
-- Dumping data for table 'BEER_FOOD'
--
*/

INSERT INTO BEER_FOOD(food_id, beer_id) VALUES (001, 001);

INSERT INTO BEER_FOOD(food_id, beer_id) VALUES (002, 002);

/*
--
-- Dumping data for table 'BEER_IN_BARS'
--
*/

INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (001, 001);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (002, 002);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (001, 003);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (001, 004);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (002, 004);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (002, 003);

/*
--
-- Dumping data for table 'BEER_FOR_SALE'
--
*/

INSERT INTO BEER_FOR_SALE(sales_id, beer_id) VALUES (001, 001);

INSERT INTO BEER_FOR_SALE(sales_id, beer_id) VALUES (002, 002);

/*
--
-- Dumping data for table 'FOOD_PAIRING'
--
*/

INSERT INTO FOOD_PAIRING(food_id, food_type) VALUES (001, 'Meat');

INSERT INTO FOOD_PAIRING(food_id, food_type) VALUES (002, 'Dessert');

/*
--
-- Dumping data for table 'SALES_LOCATION'
--
*/

INSERT INTO SALES_LOCATION(sales_id, name, city, country, state, zipcode) VALUES (001, 'Smiths', 'Salt_Lake_City', 'United_States', 'Utah', 84111);

INSERT INTO SALES_LOCATION(sales_id, name, city, country, state, zipcode) VALUES (002, 'State_Liquor_Store', 'Salt_Lake_City', 'United_States', 'Utah', 84111);

/*
--
-- Dumping data for table 'BEER_FOR_SEASON'
--
*/

INSERT INTO BEER_FOR_SEASON(beer_id, time_of_year_availability_id) VALUES (001, 01);

INSERT INTO BEER_FOR_SEASON(beer_id, time_of_year_availability_id) VALUES (002, 02);
/*
--
-- Dumping data for table 'LIKES'
--
*/

INSERT INTO LIKES(username, beer_id) VALUES ('thomasE', 01);

INSERT INTO LIKES(username, beer_id) VALUES ('bridgerf', 01);
