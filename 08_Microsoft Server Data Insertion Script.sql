-- MICROSOFT SERVER

-- INSERTING VALUES INTO CLASS TABLE
INSERT INTO class
VALUES('Economy Class'),
	  ('Business Class'),
      ('First Class');


	  -- INSERTING VALUES INTO AIRPLANE TABLE
INSERT INTO airplane
VALUES('United Airlines', '34308', 'BOEING', '787'), 
	  ('Alaska Airlines', '581', 'Airbus', 'A350'), 
	  ('Jet Blue', '21863', 'BOEING', '767'),
	  ('Frontier Airlines','55004','Airbus', 'A220'),
	  ('Envoy Air', '40', 'Airbus', 'A330');


	  -- INSERTING VALUES INTO THE PASSENGER TABLE
INSERT INTO passenger
VALUES	('Willems','Rima','189 Lost Avenue','Mankato','VA','212-088-3949'),
		('Gregory','Joseph','322 SW Camp Radial','Chalfont borough','ND','545-788-5106'),
		('Aerts','Rusty','585 Middle Horse','Bessemer Bend','IA','742-943-4391'),
        ('Pickett','Carolee','391 Gentle End Throughway','Rocklin','NE','242-188-3335'),
		('Hyde','Paulette','609 Misty Meadow','Halfway village','HI','257-864-5602'),
		('Whitaker','Estelle','530 Stony Parkway','Pocatello','ND','245-582-5860'),
		('Lyons','Ginette','641 Heather View Trafficway','Rector','FL','361-758-8265'),
		('van Maurik','Kennith','61 Green First Isle','Aventura','NC','823-383-5960'),
		('Beute','Robert','900 Clear Lane','Catalina Foothills','SC','852-277-4652'),
		('Hopper','Lorriane','P.O. Box 73344','Wentworth','AL','232-722-5647'),
		('Hunter','Phillip','135 Silent Hill Inlet','Seguin','SC','607-103-6761'),
		('Ware','Booker','342 Old Stream Bank','Perkasie borough','FL','601-147-3559'),
		('van Ekelenburg','Miguel','852 Old Junction','Enoch','OH','224-910-9798'),
		('Zwanenburg','Jannet','616 Squaw Place','Horn','NH','778-903-9662'),
		('Warren','Gerda','402 Prairie Acres','Karlsruhe','SC','668-487-7284'),
		('Mullen','Dee','283 Hazy Cider Heights','Malta','WY','841-563-0862'),
		('Vermijn','Sylvester','879 SW Glade','Minor Lane Heights','WV','608-087-4124'),
		('Hurst','Hayden','479 Cinder Corner','Cold Spring','OR','270-001-8633'),
		('Waller','Desmond','522 Dewy Rise','Pine Bush','AL','554-972-5952'),
		('Buchanan','Javier','193 Essex Walk','New Athens village','NJ','686-289-0673');


      -- INSERTING VALUES INTO TYPERATING TABLE
INSERT INTO typerating
VALUES(1),
	  (2),
      (3),
      (4),
      (5);
      

	  -- INSERTING VALUES INTO PILOT TABLE
INSERT INTO pilot
VALUES	('Lynch','Clarita','P.O. Box 28440','Bonner Springs','IN','463-717-3338', 70000, 'Captain',1),
		('Buckner','Murray','123 Umber Neck Street','Fults village','MS','517-713-6305',70000,'Captain',2),
		('Walton','Madie','P.O. Box 72324','Coeymans','HI','724-740-5025',70000,'Captain',5),
		('Kane','Brendan','486 Cozy Gate','Owens Cross Roads','SD','312-426-3751', 70000,'Captain',4),
		('Chavez','Michelina','530 Foggy Shadow Quay','Pilger village','PA','243-727-0051',70000,'Captain',3),
		('van Piggelen','Sheron','455 Merry Goose Terrace','George village','OR','231-863-6101',55000, 'First Officer',4),
		('Gallegos','Loralee','P.O. Box 27739','Essex','NE','954-059-1514',55000,'First Officer',1),
		('Clemons','Luciano','883 Stony Sky Curve','Ocean Springs','FL','911-625-1588',55000,'First Officer',5),
		('Hyde','Adriane','590 Hazy Log','Brigham','KS','220-298-2915',55000,'First Officer',3),
		('Goodwin','Felipa','274 Indian Apple','Forgan','MS','567-431-4742',55000,'First Officer',2);



	-- INSERTING VALUES INTO FlIGHT TABLE
INSERT INTO flight
VALUES ('UAL1523','Mankato','2022-11-16','22:05:02','Chalfont borough','2022-11-17','06:20:12',1,1,7),
		('AS716','Bessemer Bend','2022-11-17', '16:30:00', 'Rocklin', '2022-11-17', '20:30:00',1,2,10),
        ('JBU525','Halfway village','2022-10-17', '15:00:00', 'Pocatello', '2022-10-17', '19:30:00',3,5,9)


		-- INSERTING VALUES INTO TICKET TABLE
INSERT INTO ticket
VALUES (4135569949521,1,1,'UAL1523'),
(1933270484043,2,1,'UAL1523'),
(1867223123402,3,1,'UAL1523'),
(6723638498095,4,1,'UAL1523'),
(1808838722857,5,1,'UAL1523'),
(5309408575914,6,1,'JBU525'),
(1005152250815,7,1,'JBU525'),
(6745892058239,8,1,'JBU525'),
(2640802891666,9,2,'UAL1523'),
(7835138700665,10,2,'UAL1523'),
(4774689592030,11,3,'UAL1523'),
(3496844310990,12,2,'UAL1523'),
(2587859084920,13,2,'JBU525'),
(9968871386533,14,2,'JBU525'),
(2571083888340,15,1,'UAL1523'),
(6628616053899,16,3,'AS716'),
(4759073641547,17,3,'AS716'),
(8511916316354,18,2,'JBU525'),
(6905645163019,19,1,'AS716'),
(8408297331011,20,3,'UAL1523');