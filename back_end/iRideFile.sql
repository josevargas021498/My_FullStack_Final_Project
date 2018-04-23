-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------ WHEEL BRANDS EX: (1, Fuel, 4) (2, XD Series, 6) (3, Dick Cepek, 1) ---------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE IF NOT EXISTS whlbrands (
--     id SERIAL UNIQUE PRIMARY KEY,
--     name VARCHAR(100),
--     stock INT
-- );

-- ----- MANIPULATION -----
-- INSERT INTO whlbrands (id, name, stock) VALUES
-- (1, 'Fuel', 5),
-- (2, 'XD Series', 3),
-- (3, 'Dick Cepek', 2),
-- (4, 'Moto Metal', 5),
-- (5, 'XTreme Mudder', 4),
-- (6, 'Worx', 3);
-- ------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ----------- WHEEL STYLE EX: (1, Fuel, Hostage, 20, 12, -44, 32, 1) (2, XD Series, Monster III, 22, 12, -26, 23, 2) (3, Dick Cepek, DC2, 18, 12, -14, 19, 3) -----------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE IF NOT EXISTS whlstyle (
--     id INT PRIMARY KEY,
--     name VARCHAR(100),
--     dmtr INT,
--     width FLOAT,
--     whl_offset INT,
--     stock INT,
--     brnd_id INT REFERENCES whlbrands (id)
-- );

CREATE TABLE IF NOT EXISTS wheels (
    id SERIAL UNIQUE PRIMARY KEY,
    imge TEXT,
    brand VARCHAR(100),
    model VARCHAR(100),
    price INT,
    dscrptn TEXT,
    stock INT,
    size VARCHAR(100),
    ofst VARCHAR(100),
    link TEXT
);

INSERT INTO wheels (id, imge, brand, model, price, dscrptn, stock, size, ofst, link) VALUES -----
(1, 'https://images.customwheeloffset.com/wheels/fuel/hostage/hostage_black_20x14_white.jpg', 'Fuel', 'Hostage', 1400, 'The Fuel Hostage ... ', 17, '20x14', '-72', 'https://www.customwheeloffset.com/buy-wheel-offset/D53120401745/fuel-hostage-20x14-76-custom-wheels?suspension=Stock&trimming=No+trimming'),
(2, 'https://images.customwheeloffset.com/wheels/fuel/assault/assault_black_white.jpg', 'Fuel', 'Assault', 1349, 'The Fuel Assault ... ', 13, '22x12', '-44', 'https://www.customwheeloffset.com/buy-wheel-offset/D54622201747/fuel-assault-22x12-44-custom-wheels?suspension=Stock&trimming=No+trimming'),
(3, 'https://images.customwheeloffset.com/wheels/fuel/vapor/vapor_black_white.jpg', 'Fuel', 'Vapor', 1250, 'The Fuel Vapor ... ', 19, '20x12', '-44', 'https://www.customwheeloffset.com/buy-wheel-offset/D56020201847/fuel-vapor-20x12-44-custom-wheels?suspension=Stock&trimming=No+trimming'),
(4, 'https://images.customwheeloffset.com/wheels/fuel/lethal/lethal_chrome_white.jpg', 'Fuel', 'Lethal', 1300, 'The Fuel Lethal ... ', 15, '20x12', '-44', 'https://www.customwheeloffset.com/buy-wheel-offset/D56720201747/fuel-lethal-20x12-44-custom-wheels?suspension=Stock&trimming=No+trimming'),
(5, 'https://images.customwheeloffset.com/wheels/xd/xd822/xd822_black_white.jpg', 'XD', 'Moster II', 1219, 'The XD Monster II ... ', 13, '20x10', '-24', 'https://www.customwheeloffset.com/buy-wheel-offset/XD82221035724N/xd-xd822-20x10-24-custom-wheels?suspension=Stock&trimming=No+trimming'),
(6, 'https://images.customwheeloffset.com/wheels/xd/xs811/xs811_black_white.jpg', 'XD', 'Rockstar II', 1499, 'The XD Rockstar II ... ', 23, '20x7', '0', 'https://www.customwheeloffset.com/buy-wheel-offset/XS81120740700/xd-xs811-20x7-0-custom-wheels?suspension=Stock&trimming=No+trimming'),
(7, 'https://images.customwheeloffset.com/wheels/xd/xs827/xs827_black_white.jpg', 'XD', 'Rockstar 3', 1599, 'The XD Rockstar 3 ... ', 11, '20x7', '0', 'https://www.customwheeloffset.com/buy-wheel-offset/XS82720744700/xd-xs827-20x7-0-custom-wheels?suspension=Stock&trimming=No+trimming'),
(8, 'https://images.customwheeloffset.com/wheels/dickcepek/dc2/dc2_black_white.jpg', 'Dick Cepek', 'DC2', 985, 'The Dick Cepek DC2 ... ', 12, '20x12', '-50', 'https://www.customwheeloffset.com/buy-wheel-offset/90000000469/dick-cepek-dc-2-20x12-50-custom-wheels?suspension=Stock&trimming=No+trimming'),
(9, 'https://images.customwheeloffset.com/wheels/motometal/mo970/mo970_black_white.jpg', 'Moto Metal', 'MO970', 1399, 'The Moto Metal MO970 ... ', 11, '20x12', '-44', 'https://www.customwheeloffset.com/buy-wheel-offset/MO97021235344N/moto-metal-mo970-20x12-44-custom-wheels?suspension=Stock&trimming=No+trimming'),
(10, 'https://images.customwheeloffset.com/wheels/motometal/mo975/mo975_blackmilled_white.jpg', 'Moto Metal', 'MO975', 1399, 'The Moto Metal MO975 ... ', 21, '20x9', '18', 'https://www.customwheeloffset.com/buy-wheel-offset/MO97529068918/moto-metal-mo975-20x9-18-custom-wheels?suspension=Stock&trimming=No+trimming'),
(11, 'https://images.customwheeloffset.com/wheels/motometal/mo969/mo969_black_white.jpg', 'Moto Metal', 'MO969', 1299, 'The Moto Metal MO969 ... ', 19, '20x12', '-44', 'https://www.customwheeloffset.com/buy-wheel-offset/MO96921268744N/moto-metal-mo969-20x12-44-custom-wheels?suspension=Stock&trimming=No+trimming'),
(12, 'https://images.customwheeloffset.com/wheels/xtrememudder/xm318/xm318_blackmilled_white.jpg', 'XTreme Mudder', 'XM-318', 1279, 'The XTreme Mudder XM-318 ... ', 13, '20x12', '-44', 'https://www.customwheeloffset.com/buy-wheel-offset/XM318-201298-44GBM781/xtreme-mudder-xm-318-20x12-44-custom-wheels?suspension=Stock&trimming=No+trimming'),
(13, 'https://images.customwheeloffset.com/wheels/xtrememudder/xm314/xm314_blackmilled_white.jpg', 'XTreme Mudder', 'XM-314', 1299, 'The XTreme Mudder XM-314 ... ', 17, '20x10', '0', 'https://www.customwheeloffset.com/buy-wheel-offset/XM314-201070+0GBM110/xtreme-mudder-xm-314-20x10-0-custom-wheels?suspension=Stock&trimming=No+trimming'),
(14, 'https://images.customwheeloffset.com/wheels/xtrememudder/xm319/xm319_chromeblack_white.jpg', 'XTreme Mudder', 'XM-319 Silver', 1479, 'The XTreme Mudder XM-319 Silver', 13, '24x12', '-44', 'https://www.customwheeloffset.com/buy-wheel-offset/XM319-241282-44CBI110/xtreme-mudder-xm-319-24x12-44-custom-wheels?suspension=Stock&trimming=No+trimming'), 
(15, 'https://images.customwheeloffset.com/wheels/xtrememudder/xm318/xm318_chrome_white.jpg', 'XTreme Mudder', 'XM-318 Silver', 1399, 'The XTreme Mudder XM-318 SIlver', 11, '20x12', '-44', 'https://www.customwheeloffset.com/buy-wheel-offset/XM318-201298-44C781/xtreme-mudder-xm-318-20x12-44-custom-wheels?suspension=Stock&trimming=No+trimming'),
(16, 'https://images.customwheeloffset.com/wheels/worx/clash/clash_black_6lug_white.jpg', 'WORX', 'Clash', 1259, 'The WORX Clash ... ', 19, '20x10','-25', 'https://www.customwheeloffset.com/buy-wheel-offset/812-2105SB25/worx-clash-20x10-25-custom-wheels?suspension=Stock&trimming=No+trimming'),
(17, 'https://images.customwheeloffset.com/wheels/worx/beastii/beastii_black_white.jpg', 'WORX', 'Beast 803SB', 1399, 'The WORX Beast 803SB ...', 14, '20x12', '-44', 'https://www.customwheeloffset.com/buy-wheel-offset/808-2305BM44/worx-beast-ii-20x12-44-custom-wheels?suspension=Stock&trimming=No+trimming'),
(18, 'https://images.customwheeloffset.com/wheels/worx/destroyer/destroyer_black_8lug_white.jpg', 'WORX', 'Destroyer', 1499, 'The WORX Destroyer ... ', 10, '20x10', '-25', 'https://www.customwheeloffset.com/buy-wheel-offset/813-2105SB25/worx-destroyer-20x10-25-custom-wheels?suspension=Stock&trimming=No+trimming');



----- MANIPULATION -----
ALTER TABLE wheels ADD rel_img TEXT;

UPDATE wheels SET rel_img = ''



ALTER TABLE wheels ADD size VARCHAR(100);
ALTER TABLE wheels ADD ofst VARCHAR(100);

UPDATE wheels SET link = 'https://www.customwheeloffset.com/buy-wheel-offset/D26620209847/fuel-lethal-20x12-44-custom-wheels?suspension=Stock&trimming=No+trimming' WHERE model = 'Lethal';
UPDATE wheels SET size = '20x12.5' WHERE id = 1;
UPDATE wheels SET ofst = '-44' WHERE id = 1;
UPDATE wheels SET link = 'https://www.customwheeloffset.com/buy-wheel-offset/D53120401745/fuel-hostage-20x14-76-custom-wheels?suspension=Stock&trimming=No+trimming' WHERE id=1;

-- INSERT INTO wheels (id, name, dmtr, width, whl_offset, stock, brnd_id) VALUES -----

-- (1, 'Hostage', 20, 12, -44, 21, 1),
-- (2, 'Hostage', 22, 12.5, -26, 16, 1),
-- (3, 'Assault', 20, 12, -26, 18, 1),
-- (4, 'Vapor', 22, 14, -14, 21, 1),
-- (5, 'Lethal', 20, 12, -44, 12, 1),
-- (6, 'Monster II', 20, 12.5, -24, 13, 2),
-- (7, 'RockStar', 22, 12, -24, 28, 2),
-- (8, 'RockStar 3', 22, 14, -34, 17, 2),
-- (9, 'DC2', 22, 12, -14, 19, 3),
-- (10, 'DC2', 18, 12.5, -24, 10, 3),
-- (11, 'MO970', 20, 14, -40, 22, 4),
-- (12, 'MO975', 20, 12, -44, 14, 4),
-- (13, 'MO969', 20, 12, -44, 19, 4),
-- (14, 'MO970', 22, 12, -44, 12, 4),
-- (15, 'MO975', 22, 14, -26, 15, 4), 
-- (16, 'XM-318', 22, 12, -34, 21, 5),
-- (17, 'XM-314', 22, 12, -44, 18, 5),
-- (18, 'XM-319 Silver', 22, 12, -44, 21, 5),
-- (19, 'XM-318 SIlver', 22, 12, -44, 13, 5),
-- (20, 'Clash', 22, 12.5, -34, 11, 6),
-- (21, 'Beast 803SB', 20, 12.5, -34, 14, 6),
-- (22, 'Clash Silver', 22, 12.5, -34, 17, 6);
------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------
------------ TIRE BRANDS EX (1, Nitto, 2) (2, Federal, 1) (3, Gladiator, 3) -------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE IF NOT EXISTS trebrands (
--     id INT PRIMARY KEY,
--     name VARCHAR(100),
--     stock INT
-- );

-- ----- MANIPULATION -----
-- INSERT INTO trebrands (id, name, stock) VALUES
-- (1, 'Nitto', 5),
-- (2, 'Federal', 5),
-- (3, 'Gladiator', 5),
-- (4, 'Mickey Thompson', 5);
------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------
------- TIRE STYLE EX (1, Nitto, MudGrappler, MT, Extremely Loud Roar/Howl, 20, 14, 275, 1) (2, Federal, Couragia, MT, Medium Roar, 22, 12, 285, 2) (3, Gladiator, X-Comp, MT, Loud Roar, 20, 12, 285, 3) -------
---------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE IF NOT EXISTS trestyle (
--     id INT PRIMARY KEY,
--     name VARCHAR(100),
--     tpe VARCHAR(100),
--     rd_noise VARCHAR(100),
--     dmtr INT,
--     width FLOAT,
--     h_w INT,
--     stock INT,
--     brnd_id INT REFERENCES trebrands (id)
-- );

----- MANIPULATION -----
-- INSERT INTO trestyle (id, name, tpe, rd_noise, dmtr, width, h_w, stock, brnd_id) VALUES
-- (1, 'MudGrappler', 'MT', 'Extremely Loud Roar/Howl', 20, 14, 275, 41, 1),
-- (2, 'TrailGrappler', 'AT', 'Loud Howl', 20, 12.5, 285, 43, 1),
-- (3, 'MudGrappler', 'MT', 'Extremely Loud Roar/Howl', 22, 12.5, 265, 29, 1),
-- (4, 'MudGrappler', 'MT', 'Extremely Loud Roar/Howl', 24, 14, 255, 40, 1),
-- (5, 'TrailGrappler', 'AT', 'Loud Howl', 22, 12.5, 265, 32, 1),
-- (6, 'Couragia', 'MT', 'Medium Roar', 18, 12, 295, 33, 2),
-- (7, 'Couragia', 'MT', 'Medium Roar', 20, 12, 265, 25, 2),
-- (8, 'Couragia', 'MT', 'Medium Roar', 22, 12, 255, 43, 2),
-- (9, 'Couragia', 'MT', 'Medium ROar', 20, 12, 295, 11, 2),
-- (10, 'Couragia', 'MT', 'Medium Roar', 20, 12, 265, 23, 2),
-- (11, 'X-Comp', 'MT', 'Loud Roar', 20, 12.5, 275, 21, 3),
-- (12, 'X-Comp', 'MT', 'Loud Roar', 20, 12.5, 285, 19, 3),
-- (13, 'X-Comp', 'MT', 'Loud Roar', 22, 12.5, 265, 22, 3),
-- (14, 'X-Comp', 'MT', 'Loud Roar', 24, 14, 255, 21, 3),
-- (15, 'X-Comp', 'MT', 'Loud Roar', 24, 12.5, 275, 34, 3),
-- (16, 'Baja MTZ P3', 'MT', 'Medium Roar', 22, 14, 275, 22, 4),
-- (17, 'Baja MTZ P3', 'MT', 'Medium Roar', 24, 12.5, 265, 33, 4),
-- (18, 'Baja Claw TTC', 'MT', 'Loud Howl', 22, 14, 275, 25, 4),
-- (19, 'Baja Claw TTC', 'MT', 'Loud Howl', 20, 14, 295, 37, 4),
-- (20, 'Baja Claw TTC', 'MT', 'Loud Howl', 24, 14, 275, 16, 4);
------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------- Lightning Types EX (1, Halo, 3) (2, LED, 5) (3, HID, 3) ---------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE IF NOT EXISTS litningtypes (
--     id INT PRIMARY KEY,
--     name VARCHAR(100),
--     stock INT
-- );

-- ----- MANIPULATION -----
-- INSERT INTO litningtypes (id, name, stock) VALUES
-- (1, 'Halo', 3),
-- (2, 'LED', 6),
-- (3, 'HID', 4);
-- ------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------
------------- Lightning EX (1, Halo, Projector, Full-Headlight, 3, 1) (2, LED, LightBar, 52", 3, 2) (3, HID, Xenon HD, Full-Headlight, 4, 3)
---------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE IF NOT EXISTS litningstyle (
--     id INT PRIMARY KEY,
--     style VARCHAR(100),
--     pckge VARCHAR,
--     stock INT,
--     type_id INT REFERENCES litningtypes (id)
-- );

-- ----- MANIPULATION -----
-- INSERT INTO litningstyle (id, style, pckge, stock, type_id) VALUES
-- (1, 'Projector', 'Full-Headlight', 44, 1),
-- (2, 'Ring', 'Static Rind Lightning', 41, 1),
-- (3, 'Color Changing Concept', 'Full Strip', 55, 1),
-- (4, 'Lightbar', '52" Cree Curved LED Bar', 34, 2),
-- (5, 'Lightbar', '25" Cree Straight LED Bar', 48, 2),
-- (6, 'Grille', '30" Dual Row Bar / Full Mesh Grille', 33, 2),
-- (7, 'Pod', 'Dual LED White Venom Cube', 67, 2),
-- (8, 'Pod Concept', 'Dual Concept Color Changing Cube', 73, 2),
-- (9, 'Underglow', '4 RGB Rock LED Cubes', 47, 2),
-- (10, 'Bulb', 'Twin Morimoto XB', 88, 3),
-- (11, 'Ballast', 'Twin 45W Morimoto XB45 12K', 39, 3),
-- (12, 'Ballast', 'Twin 55W Morimoto XB50 8K', 42, 3),
-- (13, 'System', 'Full 10K HD System', 23, 3);
-- ------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------- Lift Ex (1, Rough Country, Suspension, 3.5, Full Suspension, 3) ---------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE IF NOT EXISTS lift (
--     id INT PRIMARY KEY,
--     brand VARCHAR(100),
--     lifttype VARCHAR(100),
--     size FLOAT,
--     coverage VARCHAR(100),
--     stock INT
-- );

-- ----- MANIPULATION -----
-- INSERT INTO lift VALUES
-- (1, 'Rough Country', 'Suspension', 4.5, 'Full', 28),
-- (2, 'Rough Country', 'Suspension', 3.5, 'Front', 32),
-- (3, 'Rough Country', 'Suspension', 2.5, 'Front', 22),
-- (4, 'Rough COuntry', 'Suspension', 6, 'Full', 20);
-- ------------------------





-------------------- USERS ------------------------

CREATE TABLE IF NOT EXISTS users (

    id SERIAL UNIQUE PRIMARY KEY,
    f_name VARCHAR(100),
    l_name VARCHAR(100),
    usrnme VARCHAR(100),
    pw VARCHAR(100)

);

INSERT INTO users (id, f_name, l_name, usrnme, pw) VALUES 
(1, 'Jose', 'Vargas', 'josevargas9817', 'Everest9817');

ALTER TABLE users ADD sessionKey TEXT;

---------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------
