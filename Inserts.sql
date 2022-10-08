-- Course Name: Database Programming and Data processing
-- Author: Chris Pinto
-- Due Date: Oct 7th 2022
-- Project Title: Software Developer Course

INSERT INTO "Chris_Pinto_DB_QAP1".passengers_list VALUES(1, 'chris', 'pinto', '7095551234');
INSERT INTO "Chris_Pinto_DB_QAP1".passengers_list VALUES(2, 'chloe', 'keeping', '7095554321');
INSERT INTO "Chris_Pinto_DB_QAP1".passengers_list VALUES(3, 'mr', 'clean', '7095551122');
INSERT INTO "Chris_Pinto_DB_QAP1".passengers_list VALUES(4, 'paddy', 'dawe', '7095556666');
INSERT INTO "Chris_Pinto_DB_QAP1".passengers_list VALUES(5, 'peter', 'griffin', '7095552525');
INSERT INTO "Chris_Pinto_DB_QAP1".passengers_list VALUES(6, 'justin', 'trudeau', '7095559999');


SELECT * FROM "Chris_Pinto_DB_QAP1".passengers_list;

SELECT * FROM "Chris_Pinto_DB_QAP1".passengers_list ORDER by "id " ASC;

INSERT INTO "Chris_Pinto_DB_QAP1".cities VALUES(1,'st.johns', 'newfoundland', '113948' );
INSERT INTO "Chris_Pinto_DB_QAP1".cities VALUES(2, 'toronto', 'ontario', '2930000');
INSERT INTO "Chris_Pinto_DB_QAP1".cities VALUES(3, 'halifax', 'nova scotia', '417000');
INSERT INTO "Chris_Pinto_DB_QAP1".cities VALUES(4, 'montreal', 'quebec', '1780000');
INSERT INTO "Chris_Pinto_DB_QAP1".cities VALUES(5, 'calgary', 'alberta', '1336000');
INSERT INTO "Chris_Pinto_DB_QAP1".cities VALUES(6, 'winnipeg', 'manitoba', '749534');
INSERT INTO "Chris_Pinto_DB_QAP1".cities VALUES(7, 'test', 'test', 343434);

SELECT * FROM "Chris_Pinto_DB_QAP1".cities order by id ASC;

DELETE from "Chris_Pinto_DB_QAP1".cities WHERE id = '7';

INSERT INTO "Chris_Pinto_DB_QAP1".airports VALUES(1,'st.johns international airport', 'YYT');
INSERT INTO "Chris_Pinto_DB_QAP1".airports VALUES(2,'toronto pearson airport', 'YYZ');
INSERT INTO "Chris_Pinto_DB_QAP1".airports VALUES(3,'halifax stanfield airport', 'YHZ');
INSERT INTO "Chris_Pinto_DB_QAP1".airports VALUES(4, 'montreal pierre elliot trudeau airport', 'YUL');
INSERT INTO "Chris_Pinto_DB_QAP1".airports VALUES(5, 'calgary international airport', 'YYC');
INSERT INTO "Chris_Pinto_DB_QAP1".airports VALUES(6, 'winnipeg james armstrong airport', 'YWG');
INSERT INTO "Chris_Pinto_DB_QAP1".airports VALUES(7,'billy bishop', 'YTZ');
INSERT INTO "Chris_Pinto_DB_QAP1".airports VALUES(8,'john c munro', 'YHM');



DELETE FROM "Chris_Pinto_DB_QAP1".airports WHERE id = '1';

SELECT * from "Chris_Pinto_DB_QAP1".airports;

INSERT INTO "Chris_Pinto_DB_QAP1".aircraft VALUES(1, 'wide body', 'west jet airlines', '300');
INSERT INTO "Chris_Pinto_DB_QAP1".aircraft VALUES(2, 'narrow body', 'pal airlines', '150');
INSERT INTO "Chris_Pinto_DB_QAP1".aircraft VALUES(3, 'turboprop', 'sunwing airlines', '75');

SELECT * FROM "Chris_Pinto_DB_QAP1".aircraft;

SELECT * FROM "Chris_Pinto_DB_QAP1".airports order by id ASC;

UPDATE "Chris_Pinto_DB_QAP1".airports SET city_id = 1 where id in (1);
UPDATE "Chris_Pinto_DB_QAP1".airports SET city_id = 2 where id in (2);
UPDATE "Chris_Pinto_DB_QAP1".airports SET city_id = 3 where id in (3);
UPDATE "Chris_Pinto_DB_QAP1".airports SET city_id = 4 where id in (4);
UPDATE "Chris_Pinto_DB_QAP1".airports SET city_id = 5 where id in (5);
UPDATE "Chris_Pinto_DB_QAP1".airports SET city_id = 6 where id in (6);
UPDATE "Chris_Pinto_DB_QAP1".airports SET city_id = 2 where id in (7);
UPDATE "Chris_Pinto_DB_QAP1".airports SET city_id = 2 where id in (8);

-- Q1: What airports are in what cities?
SELECT airports."airport_name", cities."city_name"
FROM "Chris_Pinto_DB_QAP1".airports, "Chris_Pinto_DB_QAP1".cities
WHERE cities.id = airports.city_id
ORDER BY cities."city_name" ASC;
----------------------------------------------------------------------

INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (1,1);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (1,2);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (1,3);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (2,1);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (2,2);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (2,3);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (3,1);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (3,2);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (3,3);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (4,1);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (4,2);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (4,3);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (5,1);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (5,2);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (6,2);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_aircraft VALUES (6,3);

SELECT * FROM "Chris_Pinto_DB_QAP1".passenger_aircraft;

-- Q2: List all aircraft passengers have travelled on?
SELECT passengers_list."first_name", passengers_list."last_name", aircraft."craft_type"
from "Chris_Pinto_DB_QAP1".passengers_list, "Chris_Pinto_DB_QAP1".aircraft, "Chris_Pinto_DB_QAP1".passenger_aircraft
where passengers_list."id " = passenger_aircraft.passenger_id and aircraft.id = passenger_aircraft.aircraft_id
order by passengers_list."id ";
------------------------------------------------------

-- St. John's flights
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (1, 1, 1, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (1, 2, 1, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (1, 3, 1, 3);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (1, 1, 1, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (1, 1, 1, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (1, 1, 1, 8);

-- Toronto Flights
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 1, 2, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 1, 2, 3);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 1, 2, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 1, 2, 5);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 1, 2, 6);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 1, 2, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 1, 2, 8);

INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 2, 2, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 2, 2, 3);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 2, 2, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 2, 2, 5);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 2, 2, 6);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 2, 2, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 2, 2, 8);

INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 3, 2, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (2, 3, 2, 8);

-- halifax Flights
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 1, 3, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 1, 3, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 1, 3, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 1, 3, 5);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 1, 3, 6);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 1, 3, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 1, 3, 8);

INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 2, 3, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 2, 3, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 2, 3, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 2, 3, 5);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 2, 3, 6);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 2, 3, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (3, 2, 3, 8);

-- Montreal Flights
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 1, 4, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 1, 4, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 1, 4, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 1, 4, 5);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 1, 4, 6);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 1, 4, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 1, 4, 8);

INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 2, 4, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 2, 4, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 2, 4, 3);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 2, 4, 5);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 2, 4, 6);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 2, 4, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (4, 2, 4, 8);

-- Calgary Flights
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 1, 5, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 1, 5, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 1, 5, 3);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 1, 5, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 1, 5, 6);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 1, 5, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 1, 5, 8);

INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 2, 5, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 2, 5, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 2, 5, 3);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 2, 5, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 2, 5, 6);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 2, 5, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (5, 2, 5, 8);

-- Winnipeg Flights
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 1, 6, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 1, 6, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 1, 6, 3);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 1, 6, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 1, 6, 5);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 1, 6, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 1, 6, 8);

INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 2, 6, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 2, 6, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 2, 6, 3);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 2, 6, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 2, 6, 5);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 2, 6, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (6, 2, 6, 8);

-- Billy Bishop Flights
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 1, 7, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 1, 7, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 1, 7, 3);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 1, 7, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 1, 7, 5);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 1, 7, 6);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 1, 7, 8);

INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 2, 7, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 2, 7, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 2, 7, 3);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 2, 7, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 2, 7, 5);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 2, 7, 6);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 2, 7, 8);

INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 3, 7, 8);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (7, 3, 7, 2);

-- John C Munro Flights
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 1, 8, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 1, 8, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 1, 8, 3);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 1, 8, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 1, 8, 5);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 1, 8, 6);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 1, 8, 7);

INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 2, 8, 1);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 2, 8, 2);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 2, 8, 3);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 2, 8, 4);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 2, 8, 5);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 2, 8, 6);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 2, 8, 7);

INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 3, 8, 7);
INSERT INTO "Chris_Pinto_DB_QAP1".airport_aircraft_from_to VALUES (8, 3, 8, 2);

SELECT * FROM "Chris_Pinto_DB_QAP1".airport_aircraft_from_to;

INSERT INTO "Chris_Pinto_DB_QAP1".arrivals values (1,'St.Johns International')
INSERT into "Chris_Pinto_DB_QAP1".arrivals values (2,'Toronto pearson airport')
INSERT into "Chris_Pinto_DB_QAP1".arrivals values (3,'Halifax International')
INSERT into "Chris_Pinto_DB_QAP1".arrivals values (4,'Montreal pierre International')
INSERT into "Chris_Pinto_DB_QAP1".arrivals values (5,'Calgary International')
INSERT into "Chris_Pinto_DB_QAP1".arrivals values (6,'Winnipeg International')
INSERT into "Chris_Pinto_DB_QAP1".arrivals values (7,'Billy Bishop')
INSERT into "Chris_Pinto_DB_QAP1".arrivals values (8,'John c Munro')

SELECT * FROM "Chris_Pinto_DB_QAP1".arrivals;


-- Q3: Which airports can aircraft take off from and land at?
SELECT airports."airport_name", aircraft."craft_type", airports."airport_name", arrivals."arrivals_name"
FROM "Chris_Pinto_DB_QAP1".airports, "Chris_Pinto_DB_QAP1".aircraft, "Chris_Pinto_DB_QAP1".airport_aircraft_from_to, "Chris_Pinto_DB_QAP1".arrivals
WHERE airports.id = airport_aircraft_from_to.airports_name and aircraft.id = airport_aircraft_from_to.aircraft_type
and airports.id = airport_aircraft_from_to.depart_from and arrivals.id = airport_aircraft_from_to.arrive_to
ORDER BY airports.id;
--------------------------------------------------------------


INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (1,1);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (1,2);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (1,3);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (1,4);

INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (2,1);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (2,2);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (2,3);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (2,4);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (2,5);

INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (3,1);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (3,2);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (3,3);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (3,4);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (3,5);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (3,6);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (3,7);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (3,8);

INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (4,4);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (4,5);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (4,6);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (4,7);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (4,8);

INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (5,1);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (5,3);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (5,6);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (5,7);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (5,8);

INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (6,1);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (6,2);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (6,3);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (6,4);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (6,5);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (6,6);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (6,7);
INSERT INTO "Chris_Pinto_DB_QAP1".passenger_airport VALUES (6,8);


SELECT * FROM "Chris_Pinto_DB_QAP1".passenger_airport;

-- Q4: What airports have passengers used?
SELECT passengers_list."first_name", passengers_list."last_name", airports."airport_name"
from "Chris_Pinto_DB_QAP1".passengers_list, "Chris_Pinto_DB_QAP1".airports, "Chris_Pinto_DB_QAP1".passenger_airport
where passengers_list."id " = passenger_airport.passenger_id and airports.id = passenger_airport.airports_id
order by passengers_list."id ";
--------------------------------------------







