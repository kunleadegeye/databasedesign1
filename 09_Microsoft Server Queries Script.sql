-- MICROSOFT SERVER

-- QUERY SHOWING THE DISPLAY OF PILOTS AND THE AIRCRAFTS THEY ARE LICENSED TO FLY
SELECT empnum, surname, name, position, p.ratingId, CONCAT(manufacturer,' ', modelNumber) AS 'Aircraft'
  FROM pilot p
  JOIN typerating t
  ON p.ratingId = t.ratingId
  JOIN airplane a
  ON t.airplaneId = a.airplaneId;

   -- QUERY SHOWING THE INFORMATION ON THE TICKET NUMBER BY JOINING MULTIPLE TABLES
SELECT p.passengerId,surname, p.name,ticketNo,c.classname,origin,destination,departureDate,arrDate
  FROM ticket t
  JOIN passenger p
  ON t.passengerId = p.passengerId
  JOIN class c
  ON c.classid = t.classid
  JOIN flight f
  ON f.flightNum = t.flightnum
  JOIN airplane a
  ON a.airplaneId = f.airplaneId;

  -- QUERY SHOWING INSERTION OF NEW RECORD 
  INSERT INTO airplane
  VALUES('United Airlines', '55508', 'BOEING', '900') 
  
  -- QUERY SHOWING NEW RECORD ASSIGNED to airplaneId 6
  SELECT *
    FROM airplane

  -- QUERY SHOWING DELETION OF AIRPLANE WITH ID 6
  DELETE
 FROM airplane
 WHERE airplaneid = 6;
 
 -- QUERY SHOWING NAME UPDATE FROM TO OLADEJI TEMI
SELECT *
  FROM passenger
  WHERE passengerid = 20;

-- QUERY SHOWING THE PASSENGERS WHO ARE FLYING FIRST CLASS
SELECT p.passengerid, surname, p.name, ticketNo, c.classname
  FROM ticket t
  JOIN class c
  ON t.classId = c.classId
  JOIN passenger p
  ON p.passengerid = t.passengerId
  WHERE c.classname = 'First Class';