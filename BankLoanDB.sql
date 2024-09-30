/*
Student name: Tahmid Islam                
Student username: addd946           
*/

/* SECTION 1 - CREATE TABLE STATEMENTS */

Create table addd946Customer
(
ID integer(45) NOT NULL AUTO_INCREMENT,
First_Name char(15)NOT NULL,
Last_Name char(15)NOT NULL,
Number varchar(11)NOT NULL,
Address varchar(225)NOT NULL,
Email varchar(45)NOT NULL UNIQUE,
Gender varchar(45)NOT NULL,
PRIMARY KEY (ID)
);

create table addd946Bank_Staff
(
ID int(10) NOT Null AUTO_INCREMENT,
full_Name varchar(45) NOT Null,
Email varchar(45)NOT Null UNIQUE,
Number varchar(11) NOT Null,
Position char(45)NOT Null,
StartDate varchar(45)NOT Null,
Gender varchar(45)NOT Null,
Salary varchar(45) NOT Null,
Availabity char(45) NOT Null,
PRIMARY KEY (ID)
);

Create table addd946Application
(
Reference_Number int(10) NOT Null,
Date varchar (45) NOT Null,
Type char(45) NOT Null,
Time varchar(10) NOT Null,
Customer_ID int(10) NOT Null,
Bank_Staff_ID int(10) NOT Null,
PRIMARY KEY (Reference_Number),
FOREIGN KEY (Customer_ID) REFERENCES addd946Customer(ID),
FOREIGN KEY (Bank_Staff_ID) REFERENCES addd946Bank_Staff(ID)
);

Create table addd946Loans
(
Code int(10) NOT Null,
Amount int(45) NOT Null,
Type Char(45) NOT Null,
Reason char(45) NOT Null,
Year int(45) NOT Null,
RepaymentThreshold varchar(10) NOT Null,
Bank_Staff_ID int(10) NOT Null,
PRIMARY KEY (Code),
FOREIGN KEY (Bank_Staff_ID) REFERENCES addd946Bank_Staff (ID)
);

Create table addd946Transaction
(
ID int(10) NOT NULL,
Date varchar(45) NOT NULL,
Time varchar(45) NOT NULL,
Payment_type char(22) NOT NULL,
Loan_Code int (10) NOT NULL,
Customer_ID int(10) NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (Loan_Code) REFERENCES addd946Loans (Code),
FOREIGN KEY (Customer_ID) REFERENCES addd946Customer (ID)
);

 
/* SECTION 2 - INSERT STATEMENTS */
INSERT INTO addd946Customer VALUES 
    ('01', 'John', 'Doe', '07123456789', '123 Main Street, Anytown UK', 'john.doe@gmail.com', 'male'),
    ('02', 'Jane', 'Smith', '07111222333', '456 Maple Avenue, Anytown USA', 'jane.smith@gmail.com', 'female'),
    ('03', 'Bob', 'Johnson', '07222333444', '789 Oak Boulevard, Anytown USA', 'bob.johnson@gmail.com', 'male'),
    ('04', 'Samantha', 'Williams', '07333444555', '321 Pine Road, Anytown USA', '', 'female'),
    ('05', 'Chris', 'Brown', '07444555666', '159 Cedar Street, Anytown USA', 'chris.brown@gmail.com', 'male'),
    ('06', 'Emily', 'Jones', '07555666777', '753 Maple Avenue, Anytown USA', 'emily.jones@gmail.com', 'female'),
    ('07', 'William', 'Miller', '07666777888', '928 Oak Boulevard, Anytown USA', 'WillamMillar@gmail.com', 'male'),
    ('08','Ashley', 'Davis', '07777888999', '147 Pine Road, Anytown USA', 'ashley.davis@gmail.com', 'female'),
    ('09', 'Michael', 'Garcia', '07888999000', '753 Cedar Street, Anytown USA', 'michael.garcia@gmail.com', 'male'),
    ('10', 'Sarah', 'Rodriguez', '07999123456', '369 Maple Avenue, Anytown USA', 'sarah.rodriguez@gmail.com', 'female'),
    ('11', 'David', 'Martinez', '079991223541', '159 Oak Boulevard, Anytown USA', 'david.martinez@gmail.com', 'male');

INSERT INTO addd946Bank_Staff VALUES 
    ('7890', 'Messi fabio', 'MessiGoat@gmail.com', '07938495611', 'Manager', '01/01/2022','Male', '£75,000', 'Monday to Sunday'),
    ('8901', 'Ronaldo leo', 'RonaldoMid@gmail.com', '07938496732', 'Loan officer Manager', '02/01/2020', 'Female', '£65,000', 'Monday to Sunday'),
    ('9012', 'Goku son', 'gokuking@gmail.com', '07938495633', 'Loan officer Representative', '03/01/2020', 'Male', '£50,000', 'Monday to Sunday'),
    ('0123', 'luffy de', 'Monkeyluffy@gmail.com', '07938495622', 'Loan officer', '04/01/2021', 'Female', '£45,000', 'Monday to Sunday'),
    ('1234', 'Jake Brown', 'jake.brown@gmail.com', '07938495633', 'Loan officer',' 05/01/2021', 'Male', '£70,000', 'Monday to Sunday'),
    ('2345', 'Naruto David', 'naruto.davis@gmail.com', '07938495644', 'Loan officer', '06/01/2021', 'Female', '£60,000', 'Monday to Sunday'),
    ('3456', 'Muhsin Anderson', 'muhsin.anderson@gmail.com', '07938495655', 'Loan officer', '07/01/2021', 'Male', '£55,000', 'Monday to Sunday'),
    ('4567','Santa Jones', 'santa.jones@gmail.com', '07938495666', 'Loan officer', '08/01/2020', 'Female', '£50,000', 'Monday to Friday'),
    ('5678', 'Surry Taylor', 'Surry.taylor@gmail.com', '07938495677', 'Loan officer', '09/01/2021', 'Male', '£65,000', 'Monday to Sunday'),
    ('6789', 'Rachel Evens', 'rachel.Evens@gmail.com', '07938495688', 'Loan officer', '10/01/2021', 'Female', '£45,000','Monday to Sunday'),
    ('7892', 'James Smith', 'james.smith@gmail.com', '07938495699', 'Executive Assistant', '11/01/2021', 'Male', '£55,000', 'Monday to Sunday');                             

INSERT INTO addd946Application VALUES 
    ('716389', '01/01/2022', 'Personal loan', '12:00', '2', '7890'),
    ('712453', '02/01/2022', 'Auto loan', '13:00', '3', '8901'),
    ('716382', '03/01/2022', 'Mortgage', '14:00', '4', '9012'),
    ('714558', '04/01/2022', 'Student loan', '15:00', '5', '0123'),
    ('716388', '05/01/2022', 'Credit card', '16:00', '6', '1234'),
    ('718992', '06/01/2022', 'Business loan', '17:00', '7', '2345'),
    ('713789', '07/01/2022', 'Personal loan', '18:00', '8', '3456'),
    ('716366', '08/01/2022', 'Auto loan', '19:00', '1', '4567'),
    ('716399', '09/01/2022', 'Mortgage', '20:00', '10', '5678'),
    ('715544', '10/01/2022', 'Student loan', '21:00', '11', '6789'),
    ('714382', '11/01/2022', 'Credit card', '22:00', '9',' 7892');
                                



INSERT INTO addd946Loans VALUES 
    ('22', '5000', 'Personal loan', 'Home renovation', '2022', '3 years', '7890'),
    ('33', '10000', 'Auto loan', 'Car purchase', '2022', '5 years', '8901'),
    ('44', '15000', 'Mortgage', 'Home purchase', '2022', '30 years', '9012'),
    ('55','20000', 'Student loan', 'Education expenses', '2022', '10 years', '0123'),
    ('66', '25000', 'Credit card', 'Emergency expenses', '2022', 'N/A', '1234'),
    ('77', '30000', 'Business loan', 'Business expansion', '2022', '5 years', '2345'),
    ('88', '35000', 'Personal loan', 'Debt consolidation', '2022', '5 years', '3456'),
    ('99', '40000', 'Auto loan', 'Lease buyout', '2022', '3 years', '4567'),
    ('100', '45000', 'Mortgage', 'Refinance', '2022', '15 years', '5678'),
    ('111', '50000', 'Student loan', 'Graduate school', '2022', '10 years', '6789'),
    ('122', '55000', 'Credit card', 'Travel expenses', '2022', 'N/A', '7890');
                            
INSERT INTO addd946Transaction VALUES 
    ('1', '2022-01-01', '12:00', 'Bank Transfer','22','1'),
    ('2', '2022-01-02', '15:30', 'Bank Transfer', '33', '2'),
    ('3', '2022-01-03', '17:00', 'Bank Transfer', '44', '3'),
    ('4', '2022-01-04', '10:00', 'Bank Transfer', '55', '4'),
    ('5', '2022-01-05', '11:30', 'Student finance', '66', '5'),
    ('6', '2022-01-06', '13:00', 'Bank Transfer', '77', '6'),
    ('7', '2022-01-07', '14:30', 'Bank Transfer', '88', '7'),
    ('8', '2022-01-08', '16:00', 'Bank Transfer', '99', '8'),
    ('9', '2022-01-09', '09:00', 'Bank Transfer', '100', '9'),
    ('10', '2022-01-10', '10:30', 'Student finance', '111', '11'),
    ('11', '2022-01-11', '12:00', 'Bank Transfer', '122', '10');
							
                            


                     
/* SECTION 3 - UPDATE STATEMENTS */
/*1*/
UPDATE addd946Customer SET Email = 'Samantha@gmail.com' WHERE addd946Customer.ID = 4;
UPDATE addd946Bank_Staff SET full_Name = 'Monkey D Luffy' WHERE addd946Bank_Staff.ID = 123;


/* SECTION 4 - SINGLE TABLE SELECT STATEMENTS */

/* 1) Select the date of payment and payment type for customer Emily Jones.  */

select Date,Payment_type from addd946Transaction where ID = '6';


/* 2) Select many loans were sent on the same date  */

SELECT COUNT(*) as NumloansSent
from addd946Transaction
WHERE Date = '2022-01-06';


/* 3) Select the type of loan and reason for loans in addd946Loans table.  */

SELECT Type, Reason FROM addd946Loans;


/* 4) Select all the staff that have J as there first letter for their first name? */

SELECT full_Name from addd946Bank_Staff WHERE full_Name LIKE 'j%';



/* 5) Select all the loans Processed in 2022*/ 

SELECT * FROM addd946Loans WHERE YEAR = 2022;


/* 6) Select all loans which were Student Loans  */

SELECT * From addd946Loans WHERE Type = 'Student loan';



/* SECTION 5 - MULTIPLE TABLE SELECT STATEMENTS */


/* 1) Select the date of payment and payment type for one customer */

SELECT t.Date , t.Payment_type
FROM addd946Transaction t 
INNER JOIN addd946Customer c ON t.ID = c.ID
WHERE c.ID = 1;


/* 2) Select the names of staff who have managed customer Bob  */

SELECT Date, COUNT(*) as NumloansSent
FROM addd946Transaction
GROUP BY Date;


/* 3) Get all the bank staff and the names of loans they processed from addd946Bank_Staff and addd946Loans  */

SELECT full_Name, 
Type FROM addd946Bank_Staff
JOIN addd946Loans ON  addd946Bank_Staff.ID = addd946Loans.Bank_Staff_ID;


/* 4) Select the most recent customer  */

SELECT c.First_Name, c.Last_Name, COUNT(*) PuchaseNum
FROM addd946Customer c
INNER JOIN addd946Transaction t ON c.ID = c.ID 
GROUP BY c.ID
ORDER BY PuchaseNum DESC
LIMIT 0,25;

/* 5) Select the names of customers who got a loan amount higher then 2000  */ 

SELECT c.First_Name, c.Last_Name, SUM(l.Amount) AS LoanAmount
FROM addd946Customer c
INNER JOIN addd946Transaction t ON c.ID = t.Customer_ID
INNER JOIN addd946Loans l ON t.Loan_Code = l.Code
GROUP BY c.First_Name, c.Last_Name
HAVING LoanAmount > 2000;

/* 6) Select Customer and their date of purchase from earliest to latest   */
SELECT c.First_Name, c.Last_Name, MAX(t.Date)
AS earliestTime FROM addd946Customer c 
INNER JOIN addd946Transaction t ON c.ID = c.ID
GROUP BY c.First_Name, c.Last_Name
ORDER BY t.Date ASC, c.First_Name DESC;




/* SECTION 6 - DELETE ROWS (make sure the SQL is commented out in this section)

DELETE FROM addd946Transaction WHERE Time = '12:00';

DELETE FROM addd946Loans WHERE addd946Loans.Bank_Staff_ID = '7890';



*/

/* SECTION 7 - DROP TABLES (make sure the SQL is commented out in this section)

DROP TABLE addd946Transaction;
DROP TABLE addd946Loans;
DROP TABLE addd946Application;
DROP TABLE addd946Bank_Staff;
DROP TABLE addd946Customer;

*/