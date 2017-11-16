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
(0001, 'Wasatch_Brewery', '1986-01-01', '801-783-1127', 'www.wasatchbeers.com', 'Salt_Lake_City', 'United_States', 'Utah', '84111', 01, 'This Brewery was founded in 1986 to satisfy the most discerning beer enthusiasts. "Where''s the beer? Where are the breweries?" Those were among the first thoughts Greg Schirf had after moving to Utah from Milwaukee in the early 80s. Incredibly, drinking and brewing were all but forbidden. Greg took matters into his own hands and did what any self respecting midwesterner would do: He started a brewery. Wasatch was the very first brewery in Utah, and one of the first craft brewers in all of the U.S., brewing award winning brews since 1986.');

INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id, history_description) VALUES
(0002, 'Epic_Brewery', '2008-01-01', '801-906-0123', 'www.epicbrewing.com', 'Salt_Lake_City', 'United_States', 'Utah', '84111', 01, 'David Cole and Peter Erickson are the founders and co-owners of Epic Brewing Company. Cole and Erickson, originally from California, started an international aquaculture company in Utah in 1992. In 2008, Utah law changed allowing these two entrepreneurs to pursue their longtime dream of opening a strong beer microbrewery in Utah, like those they frequented in the Golden State.');

<<<<<<< HEAD
INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id, history_description) VALUES
(0003, 'Fisher Brewery', '2017-01-25', '801-487-2337', 'www.fisherbeer.com/', 'Salt Lake City', 'United States', 'Utah', '84101', 01, 'Originally founded in Salt Lake City in 1884, Fisher Brewing Company has returned as an employee owned, community-focused craft brewery. Located in the Granary District of Salt Lake City, we serve fine ales and lagers on draft in our brewery taproom featuring a rotating cast of local food trucks.');
=======


INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id, history_description) VALUES
(3, ‘Left Hand Brewing’,'1980-02-23', '(303) 772-0258', ‘http://lefthandbrewing.com/’, ‘United States’, ‘Colorado’,  80501, 01, 'Living here in our great state requires great balance — there’s just simply too much to do! Soak in over 300 days of sunshine a year. Catch a show at Red Rocks. Climb to the top of 14,255′ Longs Peak. Catch an Avs or Rockies game. Drop into some fresh powder at A-Basin. Tee up on the first hole at Haystack Mountain.');


>>>>>>> 92469a1b065fb61be9085ab3a4ad98e7bf1078e4

/*
--
-- Dumping data for table 'BEER'
--
*/

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id VALUES
(001, 'Spiral_Jetty_IPA', '6.6%', '60', '69', '001', 01, '01', 0002);

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id VALUES
(002, 'Devastator', '8%', '60', '69', '002', 02, '02', 0001);

INSERT INTO BEER (beer_ID, beer_name, alcohol_by_volume, time_of_year_availability, style_code, price, price_range_code, brewery_name VALUES (001, 'Milk_Stout', '5.6%',
   'Year_Round', 'stout', '$3.99', '<$5', 'Left_Hand_Brewery');



INSERT INTO BEER (beer_ID, beer_name, alcohol_by_volume, time_of_year_availability, style_code, price, price_range_code, brewery_name VALUES (001, 'Polygamy_Porter',
   '7.6%', 'Year_Round', 'porter', '$3.99', '<$5', 'Wasatch_Brewery');



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

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (00003, 'Porter');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (00004, 'Stout');
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
