-- QUERY SHOWING PILOTS AND THEIR TYPE RATING WITH THE CORRESPONDING AIRCRAFT
SELECT empnum, surname, name, position, p.ratingId, CONCAT(manufacturer,' ', modelNumber) AS 'Aircraft'
  FROM pilot p
  JOIN typerating t
  ON p.ratingId = t.ratingId
  JOIN airplane a
  ON t.airplaneId = a.airplaneId;
  
  -- QUERY SHOWING DELETION OF AIRPLANE WITH ID 6
  DELETE
 FROM airplane
 WHERE airplaneid = 6;
 
 -- QUERY SHOWING NAME UPDATE FROM TO OLADEJI TEMI
SELECT *
  FROM passenger
  WHERE passengerid = 20;
  
UPDATE Passenger
SET surname = 'Oladejo', name='Temi'
WHERE passengerid = 20 
 -- ATTEMPT TO DELETE EMPLOYEE WAS RESTRICTED BECAUSE IT WAS PREVENTED DURING THE DATABASE DESIGN BY RESTRICTING ON DELETE
DELETE
FROM pilot
WHERE empNum = 10;
/** Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails
(`flightbookingsystem`.`flight`, CONSTRAINT `fk_flight_Pilot2` FOREIGN KEY (`empNum2`) REFERENCES `pilot` (`empNum`))*/

-- QUERY SHOWING THE PASSENGERS WHO ARE FLYING FIRST CLASS
SELECT p.passengerid, surname, p.name, ticketNo, c.name
  FROM ticket t
  JOIN class c
  USING(classId)
  JOIN passenger p
  USING(passengerid)
  WHERE c.name = 'First Class';
  
  -- QUERY SHOWING THE INFORMATION ON THE TICKET NUMBER BY JOINING MULTIPLE TABLES
SELECT p.passengerId,surname, p.name,ticketNo,c.name,origin,destination,departureDate,arrDate
  FROM ticket t
  JOIN passenger p
  ON t.passengerId = p.passengerId
  JOIN class c
  ON c.classid = t.classid
  JOIN flight f
  ON f.flightNum = t.flightnum
  JOIN airplane a
  ON a.airplaneId = f.airplaneId;
  


  