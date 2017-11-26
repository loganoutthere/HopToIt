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


INSERT INTO REGION(region_id, region_name, region_states) VALUES (001, 'New England', 'Connecticut, Maine, Massachusetts, New Hampshire, Rhode Island, Vermont');

INSERT INTO REGION(region_id, region_name, region_states) VALUES (002, 'Mid-Atlantic', 'New Jersey, New York, Pennsylvania');

INSERT INTO REGION(region_id, region_name, region_states) VALUES (003, 'East North Central', 'Illinois, Indiana, Michigan, Ohio, Wisconsin');

INSERT INTO REGION(region_id, region_name, region_states) VALUES (004, 'West North Central', 'Iowa, Kansas, Minnesota, Missouri, Nebraska, North Dakota, South Dakota');

INSERT INTO REGION(region_id, region_name, region_states) VALUES (005, 'South Atlantic', 'Delaware, Florida, Georgia, Maryland, North Carolina, South Carolina, Virginia, District of Columbia, West Virginia');

INSERT INTO REGION(region_id, region_name, region_states) VALUES (006, 'East South Central', 'Alabama, Kentucky, Mississippi, Tennessee');

INSERT INTO REGION(region_id, region_name, region_states) VALUES (007, 'West South Central', 'Arkansas, Louisiana, Oklahoma, Texas');

INSERT INTO REGION(region_id, region_name, region_states) VALUES (008, 'Mountain', 'Arizona, Colorado, Idaho, Montana, Nevada, New Mexico, Utah, Wyoming');

INSERT INTO REGION(region_id, region_name, region_states) VALUES (009, 'Pacific', 'Alaska, California, Hawaii, Oregon, and Washington');



/*
--
-- Dumping data for table 'BREWERY'
--
*/

INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id, history_description) VALUES
(0001, 'Wasatch Brewery', 1986-01-01, '801-783-1127', 'www.wasatchbeers.com', 'Salt Lake City', 'United States', 'Utah', 84111, 01, 'This Brewery was founded in 1986 to satisfy the most discerning beer enthusiasts. "Where''s the beer? Where are the breweries?" Those were among the first thoughts Greg Schirf had after moving to Utah from Milwaukee in the early 80s. Incredibly, drinking and brewing were all but forbidden. Greg took matters into his own hands and did what any self respecting midwesterner would do: He started a brewery. Wasatch was the very first brewery in Utah, and one of the first craft brewers in all of the U.S., brewing award winning brews since 1986.');

INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id, history_description) VALUES
(0002, 'Epic Brewery', 2008-01-01, '801-906-0123', 'www.epicbrewing.com', 'Salt Lake City', 'United States', 'Utah', 84111, 01, 'David Cole and Peter Erickson are the founders and co-owners of Epic Brewing Company. Cole and Erickson, originally from California, started an international aquaculture company in Utah in 1992. In 2008, Utah law changed allowing these two entrepreneurs to pursue their longtime dream of opening a strong beer microbrewery in Utah, like those they frequented in the Golden State.');

INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id, history_description) VALUES
(0003, 'Left Hand Brewing', 1980-02-23, '303-772-0258', 'www.lefthandbrewing.com', 'Longmont', 'United States', 'Colorado', 80501, 01, 'Living here in our great state requires great balance — theres just simply too much to do! Soak in over 300 days of sunshine a year. Catch a show at Red Rocks. Climb to the top of 14,255′ Longs Peak. Catch an Avs or Rockies game. Drop into some fresh powder at A-Basin. Tee up on the first hole at Haystack Mountain.');

INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id) VALUES
(0004, 'Bridger Brewing', 2013-03-02, '406-587-2124', 'www.bridgerbrewing.com', 'Bozeman','United States', 'Montana', 59715, 1, "Choosing the Bridger Brewing name for our dream was easy. From the mountain man Jim Bridger himself; to the beautiful mountains that surround our community, the name is legendary; inspiring happenings that are outside the realm of possibility for most, but not for us. We climb the iciest peaks, swim the swiftest rivers, con the most elusive trout, still hunt, gather or grow many of our meals, laugh easy, cry some and perhaps most of all, relish and appreciate this miraculous spot on the globe we call home.");

INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id) VALUES
(0005, 'Big Beaver Brewing', 2010-01-01, '970-818-6064', 'www.bigbeaverbrew.com', 'Loveland','United States', 'Colorado', 80537, 1, "Since 2010, the Big Beaver Brewing Company has been creating delicious craft beer in the shadows of the Rocky Mountain National Park. This awe-inspiring view demands equally awesome beer, and the Big Beaver Brewery provides just that with 16 beers on tap to choose from. Enjoy your favorite beer in the cozy confines of our Taproom or to-go in refillable growlers. Stop by today and see for yourself why everybody is saying…");

INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id) VALUES
(0006, 'Spencer Brewery', 1957-01-01, '508-885-5756', 'www.spencerbrewery.com', 'Spencer','United States', 'Massachusetts', 01562, 1, "Trappist communities observe the counsel of the Rule of St. Benedict, a 6th century guide for monastic life, that stresses the importance of ora et labora or pray and work. Monks are encouraged to be self-supportive and offer charitable assistance to others by producing and selling goods to the public.");

INSERT INTO BREWERY (brewery_id, name, date_established, phone_number, website, city, country, state, zipcode, region_id) VALUES
(0007, 'Lagunitas Brewing Company', 2013-03-02, '406-587-2124', 'www.lagunitas.com', 'Petaluma','United States', 'California', 94954,  009, "Choosing the Bridger Brewing name for our dream was easy. From the mountain man Jim Bridger himself; to the beautiful mountains that surround our community, the name is legendary; inspiring happenings that are outside the realm of possibility for most, but not for us. We climb the iciest peaks, swim the swiftest rivers, con the most elusive trout, still hunt, gather or grow many of our meals, laugh easy, cry some and perhaps most of all, relish and appreciate this miraculous spot on the globe we call home.");

/*
--
-- Dumping data for table 'BEER'
--
*/

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id VALUES
(001, 'Spiral Jetty IPA', 6.6, '60', '69', '001', 01, '01', 0002);

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id VALUES
(002, 'Devastator', 8.0, '60', '69', '002', 02, '02', 0001);

INSERT INTO BEER (beer_ID, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id VALUES (001, 'Milk_Stout', '5.6%', '60', '69',
   (003, 'Milk Stout', 8.0, '60', '69', 002, 02, '02', '0003');

INSERT INTO BEER (beer_ID, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id VALUES (001, 'Polygamy_Porter',
   (004, 'Polygamy Porter', 8.8, '60', '69', 002, 02, '02', 0001);

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id) VALUES
(005, 'Polestar Pilsner', 6.8, '40', '49', 012, 02, '02', 0004);

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id) VALUES
(006, 'Lee Metcalf Pale Ale', 5.4, '50', '59', 009, 02, '02', 0005);

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id) VALUES
(007, 'Ghost Town Coffee Stout', 4.8, '50', '59', 004, 02, '02', 0005);

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id) VALUES
(008, 'Fisher Beer', 4.5, '40', '49', 012, 02, '02', 0003);

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id) VALUES
(009, 'Fisher Brexit Brown', 6.5, '50', '59', 006, 02, '02', 0003);

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id) VALUES
(010, 'Big Woody IPA', 7.7, '60', '69', 001, 02, '02', 0006);

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id) VALUES
(011, 'Pecker Pilsner', 4.7, '40', '49', 012, 02, '02', 0006);

INSERT INTO BEER (beer_id, beer_name, alcohol_by_volume, ibu_rank, standard_reference_method, style_id, time_of_year_availability_id, price_range_code, brewery_id) VALUES
(012, 'Vigilante IPA', 7.4, '60', '69', 001, 02, '02', 0005);



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

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (001, 'Pale Ale');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (002, 'Amber Lager');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (00003, 'Porter');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (00004, 'Stout');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (00005, 'Bock');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (00006, 'Brown Ale');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (00007, 'Bitter');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (00008, 'Barley Wine');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (00009, 'American Pale Ale');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (00010, 'Wheat Beer');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (00011, 'Dunkel');

INSERT INTO BEER_STYLE(style_id, style_name) VALUES (00012, 'Pilsner');

/*
--
-- Dumping data for table 'BAR'
--
*/

INSERT INTO BAR(bar_id, bar_name, city, state, country, zipcode, website_url, phone_number) VALUES (001, 'Ex Wives Place', 'Salt Lake City', 'Utah', 'United States', 84105, 'https://m.facebook.com/X-Wifes-Place-67250768716/', '18015321954');

INSERT INTO BAR(bar_id, bar_name, city, state, country, zipcode, website_url, phone_number) VALUES (002, 'Liquid Joes', 'Salt Lake City', 'Utah', 'United States', 84106, 'http://liquidjoes.net/', '(801) 467-5637');

INSERT INTO BAR(bar_id, bar_name, city, state, country, zipcode, website_url, phone_number) VALUES (003, 'Busy Bee', 'Salt Lake City', 'Utah', 'United States', 84105, 'No Website Available', '(801) 935-4014');

INSERT INTO BAR(bar_id, bar_name, city, state, country, zipcode, website_url, phone_number) VALUES (004, 'Sugarhouse Pub', 'Salt Lake City', 'Utah', 'United States', 84105, 'https://www.facebook.com/sugarhousepub/?rf=153914834679862', '(801) 413-2857');

INSERT INTO BAR(bar_id, bar_name, city, state, country, zipcode, website_url, phone_number) VALUES (005, 'Wasatch Brew Pub', 'Salt Lake City', 'Utah', 'United States', 84105, 'wasatchbeers.com', '(801) 783-1127');

INSERT INTO BAR(bar_id, bar_name, city, state, country, zipcode, website_url, phone_number) VALUES (006, 'Cheers to You', 'Salt Lake City', 'Utah', 'United States', 84105, 'No Website Available', '(801) 575-6400');

INSERT INTO BAR(bar_id, bar_name, city, state, country, zipcode, website_url, phone_number) VALUES (007, 'Porqupine Pub', 'Salt Lake City', 'Utah', 'United States', 84105, 'Porqupinepub.com', '(801) 582-5555');

INSERT INTO BAR(bar_id, bar_name, city, state, country, zipcode, website_url, phone_number) VALUES (008, 'Town Club', 'Salt Lake City', 'Utah', 'United States', 84105, 'Townclub.com', '(801) 322-1371');


/*
--
-- Dumping data for table 'BEER_FOOD'
--
*/

INSERT INTO BEER_FOOD(food_id, beer_id) VALUES (001, 001);

INSERT INTO BEER_FOOD(food_id, beer_id) VALUES (002, 002);

INSERT INTO BEER_FOOD(food_id, beer_id) VALUES (003, '012');

INSERT INTO BEER_FOOD(food_id, beer_id) VALUES (004, '006');

INSERT INTO BEER_FOOD(food_id, beer_id) VALUES (005, '001');


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
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (003, 001);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (003, 002);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (003, 003);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (003, 004);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (004, 001);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (004, 002);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (004, 003);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (004, 004);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (005, 001);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (005, 002);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (005, 003);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (005, 004);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (006, 001);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (006, 002);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (006, 003);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (006, 004);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (007, 001);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (007, 002);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (007, 003);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (007, 004);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (008, 001);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (008, 002);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (008, 003);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (008, 004);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (009, 001);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (009, 002);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (009, 003);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (009, 004);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (010, 001);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (010, 002);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (010, 003);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (010, 004);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (004, 005);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (004, 006);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (004, 007);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (004, 008);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (005, 005);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (005, 006);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (005, 007);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (005, 008);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (006, 005);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (006, 006);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (006, 007);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (006, 008);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (007, 005);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (007, 006);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (007, 007);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (007, 008);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (008, 005);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (008, 006);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (008, 007);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (008, 008);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (009, 005);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (009, 006);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (009, 007);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (009, 008);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (010, 005);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (010, 006);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (010, 007);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (010, 008);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (004, 009);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (004, 010);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (004, 011);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (004, 012);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (005, 009);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (005, 010);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (005, 011);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (005, 012);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (006, 009);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (006, 010);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (006, 011);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (006, 012);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (007, 009);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (007, 010);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (007, 011);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (007, 012);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (008, 009);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (008, 010);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (008, 011);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (008, 012);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (009, 009);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (009, 010);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (009, 011);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (009, 012);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (010, 009);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (010, 010);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (010, 011);
INSERT INTO BEER_IN_BARS(bar_id, beer_id) VALUES (010, 012);

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

INSERT INTO FOOD_PAIRING(food_id, food_type) VALUES (003, 'Strong');

INSERT INTO FOOD_PAIRING(food_id, food_type) VALUES (004, 'Salty');
/*
--
-- Dumping data for table 'SALES_LOCATION'
--
*/

INSERT INTO SALES_LOCATION(sales_id, name, city, country, state, zipcode) VALUES (001, 'Smiths', 'Salt Lake City', 'United States', 'Utah', 84111);

INSERT INTO SALES_LOCATION(sales_id, name, city, country, state, zipcode) VALUES (002, 'State Liquor Store', 'Salt Lake City', 'United States', 'Utah', 84111);

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
