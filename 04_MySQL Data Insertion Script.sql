-- MYSQL
-- INSERTING VALUES INTO THE PASSENGER TABLE
USE flightbookingsystem;
INSERT INTO passenger
VALUES	(DEFAULT, 'Willems','Rima','189 Lost Avenue','Mankato','VA','212-088-3949'),
		(DEFAULT, 'Gregory','Joseph','322 SW Camp Radial','Chalfont borough','ND','545-788-5106'),
		(DEFAULT, 'Aerts','Rusty','585 Middle Horse','Bessemer Bend','IA','742-943-4391'),
        (DEFAULT,'Pickett','Carolee','391 Gentle End Throughway','Rocklin','NE','242-188-3335'),
		(DEFAULT, 'Hyde','Paulette','609 Misty Meadow','Halfway village','HI','257-864-5602'),
		(DEFAULT, 'Whitaker','Estelle','530 Stony Parkway','Pocatello','ND','245-582-5860'),
		(DEFAULT, 'Lyons','Ginette','641 Heather View Trafficway','Rector','FL','361-758-8265'),
		(DEFAULT, 'van Maurik','Kennith','61 Green First Isle','Aventura','NC','823-383-5960'),
		(DEFAULT, 'Beute','Robert','900 Clear Lane','Catalina Foothills','SC','852-277-4652'),
		(DEFAULT, 'Hopper','Lorriane','P.O. Box 73344','Wentworth','AL','232-722-5647'),
		(DEFAULT, 'Hunter','Phillip','135 Silent Hill Inlet','Seguin','SC','607-103-6761'),
		(DEFAULT, 'Ware','Booker','342 Old Stream Bank','Perkasie borough','FL','601-147-3559'),
		(DEFAULT, 'van Ekelenburg','Miguel','852 Old Junction','Enoch','OH','224-910-9798'),
		(DEFAULT, 'Zwanenburg','Jannet','616 Squaw Place','Horn','NH','778-903-9662'),
		(DEFAULT, 'Warren','Gerda','402 Prairie Acres','Karlsruhe','SC','668-487-7284'),
		(DEFAULT, 'Mullen','Dee','283 Hazy Cider Heights','Malta','WY','841-563-0862'),
		(DEFAULT, 'Vermijn','Sylvester','879 SW Glade','Minor Lane Heights','WV','608-087-4124'),
		(DEFAULT, 'Hurst','Hayden','479 Cinder Corner','Cold Spring','OR','270-001-8633'),
		(DEFAULT, 'Waller','Desmond','522 Dewy Rise','Pine Bush','AL','554-972-5952'),
		(DEFAULT, 'Buchanan','Javier','193 Essex Walk','New Athens village','NJ','686-289-0673');


-- INSERTING VALUES INTO THE CLASS TABLE
INSERT INTO class
VALUES(DEFAULT, 'Economy Class'),
	  (DEFAULT, 'Business Class'),
      (DEFAULT, 'First Class');


-- INSERTING VALUES INTO THE AIRPLANE TABLE
INSERT INTO airplane
VALUES(DEFAULT, 'United Airlines', '34308', 'BOEING', '787'), 
	  (DEFAULT, 'Alaska Airlines', '581', 'Airbus', 'A350'), 
	  (DEFAULT, 'Jet Blue', '21863', 'BOEING', '767'),
	  (DEFAULT, 'Frontier Airlines','55004','Airbus', 'A220'),
	  (DEFAULT, 'Envoy Air', '40', 'Airbus', 'A330');
      
      
	-- INSERTING VALUES INTO THE TYPERATING TABLE
INSERT INTO typerating
VALUES(DEFAULT, 1),
	  (DEFAULT, 2),
      (DEFAULT, 3),
      (DEFAULT, 4),
      (DEFAULT, 5);
      
      
	-- INSERTING VALUES INTO THE PILOT TABLE
INSERT INTO pilot
VALUES	(DEFAULT,'Lynch','Clarita','P.O. Box 28440','Bonner Springs','IN','463-717-3338', 70000, 'Captain',1),
		(DEFAULT,'Buckner','Murray','123 Umber Neck Street','Fults village','MS','517-713-6305',70000,'Captain',2),
		(DEFAULT,'Walton','Madie','P.O. Box 72324','Coeymans','HI','724-740-5025',70000,'Captain',5),
		(DEFAULT,'Kane','Brendan','486 Cozy Gate','Owens Cross Roads','SD','312-426-3751', 70000,'Captain',4),
		(DEFAULT,'Chavez','Michelina','530 Foggy Shadow Quay','Pilger village','PA','243-727-0051',70000,'Captain',3),
		(DEFAULT,'van Piggelen','Sheron','455 Merry Goose Terrace','George village','OR','231-863-6101',55000, 'First Officer',4),
		(DEFAULT,'Gallegos','Loralee','P.O. Box 27739','Essex','NE','954-059-1514',55000,'First Officer',1),
		(DEFAULT,'Clemons','Luciano','883 Stony Sky Curve','Ocean Springs','FL','911-625-1588',55000,'First Officer',5),
		(DEFAULT,'Hyde','Adriane','590 Hazy Log','Brigham','KS','220-298-2915',55000,'First Officer',3),
		(DEFAULT,'Goodwin','Felipa','274 Indian Apple','Forgan','MS','567-431-4742',55000,'First Officer',2);


-- INSERTING VALUES INTO THE TICKET TABLE
INSERT INTO ticket
VALUES (DEFAULT, 4135569949521,1,1,'UAL1523'),
(DEFAULT, 1933270484043,2,1,'UAL1523'),
(DEFAULT, 1867223123402,3,1,'UAL1523'),
(DEFAULT, 6723638498095,4,1,'UAL1523'),
(DEFAULT, 1808838722857,5,1,'UAL1523'),
(DEFAULT, 5309408575914,6,1,'JBU525'),
(DEFAULT, 1005152250815,7,1,'JBU525'),
(DEFAULT, 6745892058239,8,1,'JBU525'),
(DEFAULT, 2640802891666,9,2,'UAL1523'),
(DEFAULT, 7835138700665,10,2,'UAL1523'),
(DEFAULT, 4774689592030,11,3,'UAL1523'),
(DEFAULT, 3496844310990,12,2,'UAL1523'),
(DEFAULT, 2587859084920,13,2,'JBU525'),
(DEFAULT, 9968871386533,14,2,'JBU525'),
(DEFAULT, 2571083888340,15,1,'UAL1523'),
(DEFAULT, 6628616053899,16,3,'AS716'),
(DEFAULT, 4759073641547,17,3,'AS716'),
(DEFAULT, 8511916316354,18,2,'JBU525'),
(DEFAULT, 6905645163019,19,1,'AS716'),
(DEFAULT, 8408297331011,20,3,'UAL1523');


-- INSERTING VALUES INTO THE FLIGHT TABLE
INSERT INTO flight
VALUES ('UAL1523','Mankato','2022-11-16','22:05:02','Chalfont borough','2022-11-17','06:20:12',1,1,7),
		('AS716','Bessemer Bend','2022-11-17', '16:30:00', 'Rocklin', '2022-11-17', '20:30:00',1,2,10),
        ('JBU525','Halfway village','2022-10-17', '15:00:00', 'Pocatello', '2022-10-17', '19:30:00',3,5,9)