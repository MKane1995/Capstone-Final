BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO restaurant (name, type, address, hours, phone_number, stars, img_url, takeout, delivery, website, reviews, popup_trigger, menu, price_range)
VALUES ('Il Rione', 'pizza', '1303 W 65th St, Cleveland, OH 44102', '4:00PM-10:00PM', '(216) 282-1451', 4.8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZWNLWv5D1yRmFIqCmZVuLrcT2CgKH7_5pMQ&usqp=CAU', true, false, 'https://www.ilrionepizzeria.com/', 'https://www.yelp.com/biz/il-rione-cleveland', false, 'Green Pie,Speck Pie,Sausage Pie,Arugula Salad,Diavolo Pie,Clam Pie,Roseanna Pie,White Pie,Meat and Cheese Plate', '$$'),
('Cleveland Chop', 'steakhouse', '824 W St Clair Ave, Cleveland, OH 44113', '11:30AM-8:00PM', '(216) 696-2467', 4.5, 'https://www.restaurantnews.com/wp-content/uploads/2013/07/Cleveland-Chop-Sizzles-as-Hottest-New-Restaurant-in-Popular-Cleveland-Warehouse-District.jpg', true, false, 'https://clevelandchop.com/', 'https://www.yelp.com/biz/cleveland-chop-cleveland', false, 'Calamari,Lump Crab Cake,Crab Bisque,Berkshire Pork Chop,New York Strip,Chop Burger,Ahi Poke Tacos,Bacon Wrapped Shrimp,Filet Oscar,Chicken Piccata', '$$$'),
('My Friends Restaurant', 'diner', '11616 Detroit Ave, Cleveland, OH 44102', '12:00AM-11:59PM', '(216) 221-2575', 4.4, 'https://cloudfront-us-east-1.images.arcpublishing.com/advancelocal/T3HZIGJHJZA4BNTQBYPUC6GBGU.jpg', true, true, 'https://myfriendsrestaurant.com/', 'https://www.yelp.com/biz/my-friends-deli-and-restaurant-cleveland', false, 'Grilled Potato Pancakes,Walleye Dinner,Quesadilla,Tuscan Chicken Salad,My Friends Hummus,Mile High Reuben,My Friends Burger,Waldorf Chicken Wrap,Honey Dipped Fried Chicken,Steak & Shrimp', '$'),
('Georges Kitchen', 'diner', '13101 Triskett Rd, Cleveland, OH 44111', '6:00AM-3:00PM', '(216) 671-0430', 4.5, 'https://media-cdn.tripadvisor.com/media/photo-s/12/e3/d8/2a/george-s-kitchen.jpg', true, false, '', 'https://www.yelp.com/biz/georges-kitchen-cleveland', false, 'Greek Pork Chops,Country Chicken,Moussaka,Roasted Turkey Dinner,Lasagna,Meatloaf,Maryland Style Crab Cakes,Stir Fry,T-bone Steak,Cubano Sandwich', '$'),
('Souper Market', 'soup', '7501 Carnegie Ave, Cleveland, OH 44103', '11:00AM-4:00PM', '(216) 361-1355', 4.6, 'https://static1.squarespace.com/static/51a61c2ae4b020a19ed90986/t/51eae411e4b02a37838553b1/1374348313465/souperlogo4.jpg?format=1500w', true, true, 'http://www.thesoupermarket.com/', 'https://www.yelp.com/biz/souper-market-cleveland-2', false, 'Green Apple Salad,Chicken Paprikash Soup,Marinated Asparagus Salad,Clam Chowder,Toasted Corn Gazpacho,Pulled Chicken Noodle,Mulligatawny Soup,Chili of the Week,Fattoush Salad,Souper Goopy Grilled Cheese', '$'),
('Donatos Pizza', 'pizza', '1710 State Rd, Cuyahoga Falls, OH 44223', '11:00AM-11:00PM', '(330) 923-5900', 4.1, 'https://www.restaurantnews.com/wp-content/uploads/2020/08/Donatos-Pizza-Bringing-Its-Edge-to-Edge-Pizza-to-Knoxville.jpg', true, true, 'https://donatos.com/', 'https://www.yelp.com/search?find_desc=donatos+pizza&find_loc=Cleveland%2C+OH', false, 'Hot Honey Pepperoni Pizza,Cauliflower Spinach Mozzarella Pizza,Mariachi Chicken Pizza,Big Don Italian Sub,Hot Chicken Sub,Create Your Own Calzone,Asiago Cheese Bread,Traditional Sauced or Dry Rubbed Wings,Chicken Harvest Salad,Party Twists', '$$'),
('Trattoria Vaccaro', 'italian', '1000 Ghent Rd, Akron, OH 44333', '4:00PM-9:00PM', '(330) 666-6158', 4.5, 'https://images.squarespace-cdn.com/content/v1/5ced88f707e45200015bc757/1562940757034-P3AUDKRCPU85DZ0ZP3AA/Vaccaro-Logo-1957-BLKjpg.jpg', true, false, 'https://vactrat.com/', 'https://www.yelp.com/biz/trattoria-vaccaro-akron-2', false, 'Calimari Fritti,Insalata Mista,Fra Diavolo,Pappardelle Bolognese,Nonna Lindas Eggplant,Lobster and Shrimp Pasta,Blackened Organic Salmon,Vaccaros 1957 Timpano,The Steve Johnson,The Vegan Steve Marks', '$$$'),
('Cilantro Thai & Sushi Restaurant', 'thai', '326 S Main St #1204, Akron, OH 44308', '11:00AM-2:30PM, 5:00PM-9:00PM', '(330) 434-2876', 4.5, 'https://wp-content/uploads/2020/07/Cilantro-Logo-scaled.jpg', true, true, 'https://cilantrothai.com/', 'https://www.yelp.com/biz/cilantro-thai-and-sushi-restaurant-akron', false, 'Papaya Salad,Pad Khee Mao,Pineapple Fried Rice,Eggplant Basil,Seafood Claypot,Green Curry Seared Scallop,Volcano Roll,Salmon Tempura Roll,Sashimi Mori,Fried Banana & Ice Cream', '$$'),
('El Rancho', 'mexican', '1666 W Exchange St, Akron, OH 44313', '11:00AM-10:00PM', '(330) 864-3300', 4.2, 'https://elranchoinc.com/wp-content/uploads/2019/03/logo-copy.png', true, false, 'http://www.elranchoakron.com/wp-content/uploads/2021/09/EL-RANCHO-MENU-2021-compressed.pdf', 'https://www.yelp.com/biz/el-rancho-akron', false, 'La Pina con Mariscos,Bandeja Paisa,Arepas,Chimichangas,Carne Asada,Churros,Steak or Chicken Burro,Seafood Chipotle,Speedy Gonzalez,Tamales', '$'),
('Irie Jamaican Kitchen', 'jamaican', '837 W Market St, Akron, OH 44303', '11:00AM-9:00PM', '(330) 333-9020', 4.2, 'https://static.wixstatic.com/medi/cilantrothai.coma/096fd0_e6aea8ebb07b4c7f94f2eb542d1b47d1~mv2.png/v1/fit/w_2500,h_1330,al_c/096fd0_e6aea8ebb07b4c7f94f2eb542d1b47d1~mv2.png', true, true, 'https://www.iriejakitchen.com/', 'https://www.yelp.com/biz/irie-jamaican-kitchen-cleveland-3', false, 'Jamaican Box,Island Bowl,Roti,Banana Pudding,Irie Aide', '$$');

COMMIT TRANSACTION;
