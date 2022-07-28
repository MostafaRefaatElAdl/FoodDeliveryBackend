--  Creating DB  --
CREATE DATABASE RestaurantDelivery;

--  Create Client Table  --
CREATE TABLE Client (
    ClientId int NOT NULL IDENTITY(10,10) primary key,
    ClientName nvarchar(50) NOT NULL,
    ClientPhone nvarchar(15) NOT NULL,
	ClientEmail nvarchar(70) ,
	ClientAddress nvarchar(300) NOT NULL,
);
go
--  Create Restaurant Table  --
CREATE TABLE Restaurant (
    RestId int NOT NULL IDENTITY(100,10) primary key,
    RestName nvarchar(50) NOT NULL,
    RestImage nvarchar(500) NOT NULL,
    RestLocation nvarchar(300) NOT NULL,
	RestDescription nvarchar(500),
);
go
--  Create Meal Table  --
CREATE TABLE Meal (
    MealId int NOT NULL IDENTITY(1,1) primary key,
    MealName nvarchar(50) NOT NULL,
    MealImage nvarchar(500) NOT NULL,
	MealDescription nvarchar(500),
	MealPrice Money NOT NULL,
    RestaurantID int FOREIGN KEY REFERENCES Restaurant(RestID)
);
go
--  Create OrderItem Table  --
CREATE TABLE OrderItem (
    OrderId int NOT NULL IDENTITY(1,1) primary key,
    ClientID int FOREIGN KEY REFERENCES Client(ClientId),
    MealID int FOREIGN KEY REFERENCES Meal(MealId),
	Quantity int NOT NULL,
	);
