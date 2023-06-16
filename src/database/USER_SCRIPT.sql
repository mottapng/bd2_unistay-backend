CREATE ROLE renter WITH
	LOGIN
	PASSWORD '123';
	
GRANT SELECT ON listings TO renter;
GRANT SELECT ON address TO renter;

GRANT INSERT ON listings_report TO renter;