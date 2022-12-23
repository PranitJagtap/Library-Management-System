CREATE TABLE Binding_details(
 Binding_id number(12) PRIMARY KEY,
 Binding_Name varchar2(20)
);
CREATE TABLE Category_Details (
 Category_Name varchar2(20) ,
 Category_Id number(12) PRIMARY KEY
);
CREATE TABLE Borrower_Details (
 Borrower_Id number(12) PRIMARY KEY,
 Book_Id number(12) CONSTRAINT Book_Id_FK References Book_details(ISBN_code),
 Borrowed_From date,
 Borrowed_TO date ,
 Actual_Return_Date date,
 Issued_by number(10) CONSTRAINT Issued_by_FK REFERENCES Staff_Details(Staff_Id);
);
CREATE TABLE Shelf_Details (
 Shelf_id number(5) PRIMARY KEY,
 Shelf_No number(3),
 Floor_No number(2)
);
CREATE TABLE book_details (
 ISBN_Code number(12) PRIMARY KEY
 Book_Title varchar2(20),
 Language varchar2(10),
 Binding_Id number(12) CONSTRAINT Binding_ID_FK REFERENCES Binding_Details;
 No_Copies_Actual number(3),
 No_Copies_Current number(3),
Category_id number(12) CONSTRAINT Category_Id_FK REFERENCES Category_Details,
 Publication_year number(4),
 Shelf_Id number(5) CONSTRAINT Shelf_Id_FK REFERENCES Shelf_Details,
 Author varchar(20)
);
CREATE TABLE Staff_Details (
 Staff_Id number(12) PRIMARY KEY,
 Staff_Name varchar2(20),
 Password varchar2(20),
 Is_Admin binary_float,
 Designation varchar2(20)
);
CREATE TABLE Student_Details (
 Student_Id number(20) PRIMARY KEY,
 Student_Name varchar2(20),
 Sex varchar2(8),
 Date_Of_Birth date,
 Borrower_Id number(12) CONSTRAINT borrower_id_FK REFERENCES Borrower_Details,
 Department varchar2(20),
 contact_Number number(10),
);
