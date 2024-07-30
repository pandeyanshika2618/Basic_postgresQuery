CREATE TABLE Company
	(
	ID INT PRIMARY KEY NOT NULL ,
	NAME TEXT ,
	AGE INT ,
	Address VARCHAR(100),
	Salary INT 
);
CREATE TABLE Audit (
    Emp_ID INT NOT NULL PRIMARY KEY,
    ENTRY_DATE DATE
);
CREATE TRIGGER MyTrigger 
AFTER INSERT ON COMPANY
FOR EACH ROW EXECUTE FUNCTION auditlog();
 
CREATE OR REPLACE FUNCTION auditlog()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO Audit (EMP_ID, ENTRY_DATE)
    VALUES (NEW.id, current_timestamp);
    RETURN NEW; 
END;
$$ LANGUAGE plpgsql;
INSERT INTO Company (ID ,NAME , Address , Salary)
VALUES (1 , 'Anjali' ,'RajaJipuram' ,3000);
  SELECT * from Company ;
SELECT * from Audit ;
INSERT INTO Company (ID ,NAME , Address , Salary)
VALUES (4 , 'Anjali' ,'RajaJipuram' ,3000);