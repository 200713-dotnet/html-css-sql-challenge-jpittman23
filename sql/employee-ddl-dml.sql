use master;
GO

create database employeedb;
go

create schema work;
go

create table EmpDetails
(
    Id int not null primary key,
    EmployeeId int not null,
    Salary int not null,
    [Address1] NVARCHAR(250) not null,
    [Address2] NVARCHAR(250) not null,
    City NVARCHAR(250) not null,
    [State] NVARCHAR(250) not null,
    Country NVARCHAR(250) not null,
    constraint FK_EmployeeId FOREIGN key REFERENCES work.Employee(EmployeeId)
);

create table Employee
(
    EmployeeId int not null,
    [Fist Name] NVARCHAR(250) not null,
    [Last Name] NVARCHAR(250) not null,
    SSN int not null,
    DeptId int not null,
    constraint FK_DeptId FOREIGN key REFERENCES work.Department(DeptId)
);

create table Department
(
    DeptId int not null primary key,
    [Name] NVARCHAR(250) not null,
    [Location] NVARCHAR(250) not null
);