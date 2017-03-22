use SQLand_PHASE2;
---------------------------- CREATE -----------------------

CREATE TABLE PARK
(
  Location_ID char(5) NOT NULL,
  City varchar(20) NOT NULL,
  State varchar(20) NOT NULL,
  Zip_Code char(5) NOT NULL,
  PRIMARY KEY (Location_ID)
);

CREATE TABLE DEPARTMENT
(
  Dept_ID char(10) NOT NULL,
  DName varchar(10) NOT NULL,
  Phone char(10) NOT NULL,
  Description varchar(140),
  Dept_Location_ID char(5) NOT NULL,
  PRIMARY KEY (Dept_ID)
);

CREATE TABLE EMPLOYEE
(
  Employee_ID char(9) NOT NULL,
  SSN char(9) NOT NULL,
  Name varchar(30) NOT NULL,
  Phone char(10) NOT NULL,
  Address varchar(30) NOT NULL,
  Employee_Dept_ID char(10) NOT NULL,
  PRIMARY KEY (Employee_ID)
);

CREATE TABLE SECTION
(
  Name varchar(10) NOT NULL,
  Section_Location_ID char(5) NOT NULL,
  PRIMARY KEY (Name)
);

CREATE TABLE ATTRACTION
(
  Attraction_ID char(10) NOT NULL,
  Name varchar(30) NOT NULL,
  Description varchar(140),
  Attr_Park_Section varchar(10) NOT NULL,
  PRIMARY KEY (Attraction_ID)
);

CREATE TABLE FOOD_BEVERAGE
(
  FB_ID char(10) NOT NULL,
  Vendor varchar(10) NOT NULL,
  Description varchar(140),
  Type char(1) NOT NULL,
  FB_Park_Section varchar(10) NOT NULL,
  PRIMARY KEY (FB_ID)
);

CREATE TABLE LIVE_ENTERTAINMENT
(
  Show_ID char(10) NOT NULL,
  Start_Time time NOT NULL,
  End_Time time NOT NULL,
  Type char(1) NOT NULL,
  LE_Park_Section varchar(10) NOT NULL,
  PRIMARY KEY (Show_ID)
);

CREATE TABLE CHARACTER_EXPERIENCE
(
  Exp_ID char(10) NOT NULL,
  Start_Time time NOT NULL,
  End_Time time NOT NULL,
  Description varchar(140),
  CE_Park_Section varchar(10) NOT NULL,
  PRIMARY KEY (Exp_ID)
);

CREATE TABLE FIRST_AID
(
  Location_ID char(10) NOT NULL,
  FA_Park_Section varchar(10) NOT NULL,
  PRIMARY KEY (Location_ID)
);

CREATE TABLE PHOTO_BOOTH
(
  Booth_ID char(10) NOT NULL,
  PH_Park_Section varchar(10) NOT NULL,
  PH_Attr_Event_ID char(10),
  PH_CE_Event_ID char(10),
  PRIMARY KEY (Booth_ID)
);

CREATE TABLE MERCHANDISE
(
  Store_ID char(10) NOT NULL,
  Description varchar(140),
  Merch_Park_Section varchar(10) NOT NULL,
  PRIMARY KEY (Store_ID))
);

CREATE TABLE ITEM
(
  Item_ID char(5) NOT NULL,
  Price INT NOT NULL,
  Manufacturer varchar(20) NOT NULL,
  PRIMARY KEY (Item_ID)
);

CREATE TABLE TICKET
(
  Ticket_ID char(10) NOT NULL,
  Holder_Name varchar(30) NOT NULL,
  Holder_Phone char(10) NOT NULL,
  Holder_Addr varchar(30) NOT NULL,
  Holder_Age INT NOT NULL,
  Visit_Date date NOT NULL,
  Ticket_Location_ID char(5) NOT NULL,
  PRIMARY KEY (Ticket_ID)
);

CREATE TABLE HOTEL
(
  Room_Num INT NOT NULL,
  Guest_Name varchar(30) NOT NULL,
  Guest_Ticket_ID char(10) NOT NULL,
  Total_Guests INT NOT NULL,
  Check_In_Date date NOT NULL,
  Check_Out_Date date NOT NULL,
  Room_Type char(1) NOT NULL,
  Hotel_Park_ID char(5) NOT NULL,
  PRIMARY KEY (Room_Num)
);

CREATE TABLE TRANSPORTATION
(
  Vehicle_ID char(10) NOT NULL,
  Type char(1) NOT NULL,
  Trans_Park_Section varchar(10)
  PRIMARY KEY (Vehicle_ID)
);

CREATE TABLE SELLS_MERCH
(
  Sell_Merch_Store_ID char(10) NOT NULL,
  Sell_Merch_Item_ID char(5) NOT NULL,
  PRIMARY KEY (Sell_Merch_Store_ID, Sell_Merch_Item_ID)
);

CREATE TABLE EMPLOYEE_AUDIT
(EmpID char(9), 
EmpSSN char(9),
EmpName varchar(30),
EmpDeptID char(10),
Audit_Action varchar(100),
Audit_TimeStamp datetime);

CREATE TABLE TICKET_AUDIT
(TicID char(10), 
TicName varchar(30),
Audit_Action varchar(100),
Audit_TimeStamp datetime);

-------------------------- INSERTS --------------------------

INSERT INTO PARK values
('11111', 'COLUMBUS', 'OH', '43210'),
('22222', 'BURBANK', 'CA', '91501'),
('33333', 'CHARLOTTE', 'NC', '28105');

INSERT INTO DEPARTMENT values
('DP01000001', 'CORPORATE', '6145472295', 'Corporate Dept at Columbus', '11111'),
('DP01000002', 'OPERATIONS', '6145472296', 'Operations Dept at Columbus', '11111'),
('DP02000001', 'CORPORATE', '6145472297', 'Corporate Dept at Columbus', '22222'),
('DP02000002', 'OPERATIONS', '6145472298', 'Operations Dept at Columbus', '22222'),
('DP03000001', 'CORPORATE', '6145472299', 'Corporate Dept at Columbus', '33333'),
('DP03000002', 'OPERATIONS', '614547300', 'Operations Dept at Columbus', '33333');

INSERT INTO EMPLOYEE values
('111111111', '222222221', 'Joyce Wallace', '6141234567', '67 Sunset Drive', 'DP01000001'),
('111111112', '222222222', 'Joyce Wallace', '6141234567', '67 Sunset Drive', 'DP01000001'),
('111111113', '222222223', 'Joyce Wallace', '6141234567', '67 Sunset Drive', 'DP01000001'),
('111111114', '222222224', 'Joyce Wallace', '6141234567', '67 Sunset Drive', 'DP01000001');

INSERT INTO SECTION values
('WaterLand', '11111'),
('HorrorLand', '22222'),
('ToonLand', '11111'),
('SpaceLand', '33333');

INSERT INTO ATTRACTION values
('0000100001', 'Water slide', 'Its a water slide in California!', 'WaterLand'), 
('0000100002', 'Haunted Mansion', 'California Boo!', 'HorrorLand'), 
('0000100003', '3D Show', 'Its a 3D show in California!', 'ToonLand'), 
('0000100004', 'Space ride', 'Its a space ride in California!', 'SpaceLand'), 
('0000200001', 'Water slide', 'Its a water slide in Ohio!', 'WaterLand'), 
('0000200002', 'Haunted Mansion', 'Ohio Boo!', 'HorrorLand'), 
('0000200003', '3D Show', 'Its a 3D show in Ohio!', 'ToonLand'), 
('0000200004', 'Space ride', 'Its a space ride in Ohio!', 'SpaceLand'), 
('0000300001', 'Water slide', 'Its a water slide in NC!', 'WaterLand'), 
('0000300002', 'Haunted Mansion', 'NC Boo!', 'HorrorLand'), 
('0000300003', '3D Show', 'Its a 3D show in NC!', 'ToonLand'), 
('0000300004', 'Space ride', 'Its a space ride in NC!', 'SpaceLand');

INSERT INTO FOOD_BEVERAGE values
('FB01000001', 'Remys', 'Remys Fresh Foods', 'S', 'ToonLand'),
('FB01000002', 'FoodnStuff', 'Food and Supplies','Q', 'WaterLand'),
('FB02000001', 'Bolz', 'Assorted Park Food', 'Q', 'SpaceLand'),
('FB02000002', 'Flynns', 'Grand Dinner Food', 'S', 'WaterLand'),
('FB03000001', 'Dreese', 'Fine Lunch Cuisine', 'S', 'HorrorLand'),
('FB03000002', 'Thompsons', 'Fresh Bakery Items', 'Q', 'ToonLand');

INSERT INTO LIVE_ENTERTAINMENT values
('LE01000001', '12:30:00', '13:00:00', '1', 'ToonLand'),
('LE01000002', '19:00:00', '20:00:00', '2', 'WaterLand'),
('LE02000001', '13:30:00', '14:00:00', '1', 'HorrorLand'),
('LE02000002', '18:30:00', '19:30:00', '1', 'SpaceLand'),
('LE03000001', '12:30:00', '1:00:00', '2', 'WaterLand'),
('LE03000002', '14:30:00', '15:30:00', '1', 'HorrorLand');

INSERT INTO CHARACTER_EXPERIENCE values 
('CE01000001', '08:00:00', '09:00:00', 'Meet a ghost!', 'HorrorLand'),
('CE01000002', '09:00:00', '10:00:00', 'Meet an astronaut!', 'SpaceLand'),
('CE01000003', '10:00:00', '11:00:00', 'Meet a cartoon!', 'ToonLand'),
('CE01000004', '11:00:00', '12:00:00', 'Meet a mermaid!', 'WaterLand'),
('CE02000001', '08:00:00', '09:00:00', 'Meet a ghost!', 'HorrorLand'),
('CE02000002', '09:00:00', '10:00:00', 'Meet an astronaut!', 'SpaceLand'),
('CE02000003', '10:00:00', '11:00:00', 'Meet a cartoon!', 'ToonLand'),
('CE02000004', '11:00:00', '12:00:00', 'Meet a mermaid!', 'WaterLand'),
('CE03000001', '08:00:00', '09:00:00', 'Meet a ghost!', 'HorrorLand'),
('CE03000002', '09:00:00', '10:00:00', 'Meet an astronaut!', 'SpaceLand'),
('CE03000003', '10:00:00', '11:00:00', 'Meet a cartoon!', 'ToonLand'),
('CE03000004', '11:00:00', '12:00:00', 'Meet a mermaid!', 'WaterLand');

INSERT INTO FIRST_AID values
('FA01000001', 'HorrorLand'),
('FA01000002', 'SpaceLand'),
('FA02000001', 'ToonLand'),
('FA02000002', 'WaterLand'),
('FA03000001', 'ToonLand'),
('FA03000002', 'SpaceLand');

INSERT INTO PHOTO_BOOTH (Booth_ID, PH_Park_Section, PH_Attr_Event_ID) values
('PB01000001', 'WaterLand', '0000100001');
INSERT INTO PHOTO_BOOTH (Booth_ID, PH_Park_Section, PH_CE_Event_ID) values
('PB01000002', 'SpaceLand', 'CE03000001');

INSERT INTO MERCHANDISE values
('ME01000001', 'Horror gift store', 'HorrorLand'),
('ME01000002', 'Sea life gift store', 'WaterLand'),
('ME01000003', 'Cartoon gift store', 'ToonLand'),
('ME01000004', 'Space gift store', 'SpaceLand'),
('ME02000001', 'Horror gift store', 'HorrorLand'),
('ME02000002', 'Sea life gift store', 'WaterLand'),
('ME02000003', 'Cartoon gift store', 'ToonLand'),
('ME02000004', 'Space gift store', 'SpaceLand'),
('ME03000001', 'Horror gift store', 'HorrorLand'),
('ME03000002', 'Sea life gift store', 'WaterLand'),
('ME03000003', 'Cartoon gift store', 'ToonLand'),
('ME03000004', 'Space gift store', 'SpaceLand');

INSERT INTO ITEM values
('IT001', '12', 'Theme Park Toys'),
('IT002', '25', 'Reel Vogue'),
('IT003', '30', 'Gepettos'),
('IT004', '10', 'Waynes'),
('IT005', '8', 'CK'),
('IT006', '50', 'Queens');

INSERT INTO TICKET values
('TI00000001', 'Bob Feller', '6147875098', '5656 Wyandotte Blvd', 27, '2016-05-07', '11111'),
('TI00000002', 'John Babbledoo', '9374859023', '2405 Running Way', 21, '2016-07-23', '11111'),
('TI00000003', 'Blue Ivy Carter', '2739504442', '103 Charlotte St. Apt. B', 5, '2016-08-17', '11111'),
('TI00000005', 'Jimmy John', '9032345676', '256 Brand Blvd', 16, '2016-06-23', '22222'),
('TI00000006', 'Natasha Montague', '3026752345', '9053 Critter Ct.', 33, '2016-03-23', '22222'),
('TI00000007', 'Tosh McDanielson', '2423941010', '1024 Tribe St.', 45, '2016-04-01', '22222'),
('TI00000008', 'Ankeeta Smith', '6145762323', '576 Buttermilk Blvd.', 16, '2016-12-05', '33333'),
('TI00000009', 'Mark Zuckabug', '4348951627', '67 Millionaire Rd.', 32, '2016-05-05', '33333'),
('TI00000010', 'Jessica Jones', '9031205485', '90 Bluff Point Way', 27, '2016-04-20', '33333');

INSERT INTO HOTEL values
('39', 'Bob Feller', '0000000001', 1, '2016-03-09', '2016-03-10','P', '11111'),
('02', 'Jimmy John', '0000000005', 3, '2016-05-10', '2016-05-14','S', '22222'),
('10', 'Ankeeta Smith', '0000000008', 2, '2016-07-09', '2016-07-11','D', '33333');

INSERT INTO TRANSPORTATION values
('TR01000001', 'M', 'WaterLand'),
('TR01000002', 'S', 'SpaceLand'),
('TR02000001', 'M', 'HorrorLand'),
('TR02000002', 'S', 'ToonLand'),
('TR03000001', 'M', 'SpaceLand'),
('TR03000002', 'S', 'ToonLand');

INSERT INTO SELLS_MERCH values
('ME01000001', 'IT001'),
('ME01000002' ,'IT006'),
('ME01000003' ,'IT002'),
('ME01000004' ,'IT003'),
('ME03000001' ,'IT004'),
('ME03000002' ,'IT005'),
('ME03000003' ,'IT002'),
('ME03000004' ,'IT001'),
('ME02000001' ,'IT006'),
('ME02000002' ,'IT003'),
('ME02000003' ,'IT002'),
('ME02000004' ,'IT001');

---------------------- ADD CONSTRAINTS--------------------

ALTER TABLE DEPARTMENT add constraint DeptLoc FOREIGN KEY(Dept_Location_ID) REFERENCES PARK(Location_ID);
ALTER TABLE EMPLOYEE add constraint EmpDept FOREIGN KEY(Employee_Dept_ID) REFERENCES DEPARTMENT(Dept_ID);
ALTER TABLE SECTION add constraint SectLoc FOREIGN KEY(Section_Location_ID) REFERENCES PARK(Location_ID);
ALTER TABLE ATTRACTION add constraint AttrSect FOREIGN KEY(Attr_Park_Section) REFERENCES SECTION(Name);
ALTER TABLE FOOD_BEVERAGE add constraint FBSect FOREIGN KEY(FB_Park_Section) REFERENCES SECTION(Name);
ALTER TABLE LIVE_ENTERTAINMENT add constraint LESect FOREIGN KEY(LE_Park_Section) REFERENCES SECTION(Name);
ALTER TABLE CHARACTER_EXPERIENCE add constraint CESect FOREIGN KEY(CE_Park_Section) REFERENCES SECTION(Name);
ALTER TABLE FIRST_AID add constraint FASect FOREIGN KEY(FA_Park_Section) REFERENCES SECTION(Name);
ALTER TABLE PHOTO_BOOTH add constraint PHSect FOREIGN KEY(PH_Park_Section) REFERENCES SECTION(Name);
ALTER TABLE PHOTO_BOOTH add constraint PHAttrID FOREIGN KEY(PH_Attr_Event_ID) REFERENCES ATTRACTION(Attraction_ID);
ALTER TABLE PHOTO_BOOTH add constraint PHCEID FOREIGN KEY(PH_CE_Event_ID) REFERENCES CHARACTER_EXPERIENCE(Exp_ID);
ALTER TABLE MERCHANDISE add constraint MerchSect FOREIGN KEY(Merch_Park_Section) REFERENCES SECTION(Name);
ALTER TABLE TICKET add constraint TicketLoc FOREIGN KEY(Ticket_Location_ID) REFERENCES PARK(Location_ID);
ALTER TABLE HOTEL add constraint HotelLoc FOREIGN KEY(Hotel_Park_ID) REFERENCES PARK(Location_ID);
ALTER TABLE TRANSPORTATION add constraint TranSect FOREIGN KEY(Trans_Park_Section) REFERENCES SECTION(Name);
ALTER TABLE SELLS_MERCH add constraint MerchStore FOREIGN KEY(Sell_Merch_Store_ID) REFERENCES MERCHANDISE(Store_ID);
ALTER TABLE SELLS_MERCH add constraint MerchID FOREIGN KEY(Sell_Merch_Item_ID) REFERENCES ITEM(Item_ID);
GO
------------------------- TRIGGERS -----------------------

CREATE TRIGGER trgAfterUpdateEmployee2 ON EMPLOYEE
AFTER UPDATE
AS
	declare @empID char(9);
	declare @empSSN char(9);
	declare @empName varchar(30);
	declare @empDeptID char(10);
	declare @audit_action varchar(100);

	Select @empID = i.Employee_ID from inserted i;
	Select @empSSN = i.SSN from inserted i;
	Select @empName = i.Name from inserted i;
	Select @empDeptID = i.Employee_Dept_ID from inserted i;
	Set @audit_action = 'Inserted record -- After insert trigger.';

	Insert into EMPLOYEE_AUDIT
	(EmpID, EmpSSN, EmpName, EmpDeptID, Audit_Action, Audit_TimeStamp) values (@empID, @empSSN, @empName, @empDeptID, @audit_action, getdate());

PRINT 'AFTER INSERT trigger fired.'
GO

CREATE TRIGGER trgAfterUpdateTicket3 ON TICKET
AFTER UPDATE
AS
	declare @ticID char(10);
	declare @ticName varchar(30);
	declare @audit_action varchar(100);
	
	Select @ticID = i.Ticket_ID from inserted i;
	Select @ticName= i.Holder_Name from inserted i;
	Set @audit_action = 'Inserted record -- After insert trigger.';

	Insert into TICKET_AUDIT
	(TicID, TicName, Audit_Action, Audit_TimeStamp) values (@ticID, @ticName, @audit_action, getdate());

PRINT 'AFTER INSERT trigger fired.'
GO

