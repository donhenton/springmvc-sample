create  schema demo;
set schema demo;

CREATE  TABLE restaurant (
        id integer generated by default as identity,
        name VARCHAR(255),
        version  INT,
        zip_code VARCHAR(255),
        city VARCHAR(255),
        state VARCHAR(255),
         primary key (id)
    );


insert into restaurant (name, city, state, zip_code, version) values('Subway', 'Plymouth', 'WI', '53073', 1);
insert into restaurant (name, city, state, zip_code, version) values('Boston Market', 'Gaithersburg', 'MD', '20877', 1);
insert into restaurant (name, city, state, zip_code, version) values('Subway Subs', 'Santa Teresa', 'NM', '88008', 1);
insert into restaurant (name, city, state, zip_code, version) values('Arby''s Roast Beef Restaurant', 'Klamath Falls', 'OR', '97603', 1);
insert into restaurant (name, city, state, zip_code, version) values('Bellefleur Winery & Restaurant', 'Carlsbad', 'CA', '92008', 1);
insert into restaurant (name, city, state, zip_code, version) values('Huddle House', 'Calhoun', 'GA', '30701', 1);
insert into restaurant (name, city, state, zip_code, version) values('John Browne''s Pub & Eatery', 'Indianapolis', 'IN', '46235', 1);
insert into restaurant (name, city, state, zip_code, version) values('Ling''s Express', 'Milwaukee', 'WI', '53217', 1);
insert into restaurant (name, city, state, zip_code, version) values('Chubys''s', 'Odell', 'OR', '97044', 1);
insert into restaurant (name, city, state, zip_code, version) values('Bojangles', 'Columbia', 'SC', '29203', 1);
insert into restaurant (name, city, state, zip_code, version) values('NPC International', 'Memphis', 'TN', '38134', 1);
insert into restaurant (name, city, state, zip_code, version) values('Pancake Cafe', 'Naperville', 'IL', '60540', 1);
insert into restaurant (name, city, state, zip_code, version) values('Hong & Kong Restaurant', 'Chelmsford', 'MA', '01824', 1);
insert into restaurant (name, city, state, zip_code, version) values('The Chicken Cooperative', 'Ketchum', 'OK', '74349', 1);
insert into restaurant (name, city, state, zip_code, version) values('Subway', 'Lonoke', 'AR', '72086', 1);
insert into restaurant (name, city, state, zip_code, version) values('Domino''s Pizza', 'Loveland', 'CO', '80537', 1);
insert into restaurant (name, city, state, zip_code, version) values('Carl''s Jr', 'Peoria', 'IL', '61615', 1);
insert into restaurant (name, city, state, zip_code, version) values('El Toro Bar & Grill', 'Shawnee', 'KS', '66216', 1);
insert into restaurant (name, city, state, zip_code, version) values('Subway Sandwiches & Salads', 'New Orleans', 'LA', '70123', 1);
insert into restaurant (name, city, state, zip_code, version) values('Subway', 'Decatur', 'GA', '30030', 1);
insert into restaurant (name, city, state, zip_code, version) values('Arby''s', 'Indianapolis', 'IN', '46268', 1);
insert into restaurant (name, city, state, zip_code, version) values('China King', 'Cedar Rapids', 'IA', '52404', 1);
insert into restaurant (name, city, state, zip_code, version) values('Subway Sandwiches & Salads', 'Knoxville', 'TN', '37924', 1);
insert into restaurant (name, city, state, zip_code, version) values('Luciano Italian Restaurant', 'Oakton', 'VA', '22124', 1);
insert into restaurant (name, city, state, zip_code, version) values('Fruition', 'Portland', 'OR', '97210', 1);
insert into restaurant (name, city, state, zip_code, version) values('Blough''s Delicatessen', 'Davidsville', 'PA', '15928', 1);
insert into restaurant (name, city, state, zip_code, version) values('Hardee''s of Murfreesboro No 4', 'Murfreesboro', 'TN', '37128', 1);
insert into restaurant (name, city, state, zip_code, version) values('Dairy Queen restaurant ', 'Carter Lake', 'IA', '51510', 1);
insert into restaurant (name, city, state, zip_code, version) values('Imperial Wok Chinese Restaurant', 'Shreveport', 'LA', '71118', 1);
insert into restaurant (name, city, state, zip_code, version) values('Hardee''s', 'Waldorf', 'MD', '20601', 1);
insert into restaurant (name, city, state, zip_code, version) values('Cinnabon', 'Gainesville', 'FL', '32605', 1);
insert into restaurant (name, city, state, zip_code, version) values('Angle Inn Restaurant', 'Rockford', 'IL', '61103', 1);
insert into restaurant (name, city, state, zip_code, version) values('Casey''s Carry Out Pizza', 'Thomson', 'IL', '61285', 1);
insert into restaurant (name, city, state, zip_code, version) values('Sonic Drive In', 'Salt Lake City', 'UT', '84118', 1);
insert into restaurant (name, city, state, zip_code, version) values('Mcdonald''s restaurant ', 'Racine', 'WI', '53406', 1);
insert into restaurant (name, city, state, zip_code, version) values('Huhot Mongolian Grill', 'Omaha', 'NE', '68154', 1);
insert into restaurant (name, city, state, zip_code, version) values('Giovanni''s Pizzeria', 'Las Vegas', 'NV', '89123', 1);
insert into restaurant (name, city, state, zip_code, version) values('Bangkok Royal', 'Waco', 'TX', '76706', 1);
insert into restaurant (name, city, state, zip_code, version) values('Golden Coin Bake Shop & Restaurant', 'Waipahu', 'HI', '96797', 1);
insert into restaurant (name, city, state, zip_code, version) values('Cristaudo''s Grand Avenue', 'Carbondale', 'IL', '62901', 1);
insert into restaurant (name, city, state, zip_code, version) values('O''Charley''s Restaurant', 'Independence', 'MO', '64057', 1);
insert into restaurant (name, city, state, zip_code, version) values('A1 Ocean Cafe', 'San Francisco', 'CA', '94104', 1);
insert into restaurant (name, city, state, zip_code, version) values('Alberto''s Mexican Food', 'Corona', 'CA', '92880', 1);
insert into restaurant (name, city, state, zip_code, version) values('Beach Dog Computer Center', 'Hilo', 'HI', '96720', 1);
insert into restaurant (name, city, state, zip_code, version) values('Burger King', 'Houston', 'TX', '77070', 1);
insert into restaurant (name, city, state, zip_code, version) values('Fox River Brew Pub', 'Oshkosh', 'WI', '54901', 1);
insert into restaurant (name, city, state, zip_code, version) values('Buffas Delicatessen', 'New York', 'NY', '10012', 1);
insert into restaurant (name, city, state, zip_code, version) values('Maria''s Mexican Bistro Inc', 'Brooklyn', 'NY', '11215', 1);
insert into restaurant (name, city, state, zip_code, version) values('Sue''s Restaurant', 'Providence', 'RI', '02903', 1);
insert into restaurant (name, city, state, zip_code, version) values('Dairy Queen Brazier', 'Cameron', 'MO', '64429', 1);