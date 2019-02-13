create database fpbpTest;


Use fpbpTest;

Create table available_categories
( Category varchar(20) , primary key(Category));
commit;
Insert into fpbpTest.available_categories(Category) values("Food");
Insert into fpbpTest.available_categories(Category) values("Housing");
Insert into fpbpTest.available_categories(Category) values("Clothing");
Insert into fpbpTest.available_categories(Category) values("Financial"); 
Insert into fpbpTest.available_categories(Category) values("Education");
commit;



Use fpbpTest; 

Create table helpProvider (pid int auto_increment,name varchar(50), address varchar(100), contact varchar(20), 
                        email varchar(50), hours_of_operation varchar(50), website varchar(50),Category varchar(20),primary key(sid), foreign key(Category)  references available_categories(Category));

commit;

Create table helpSeeker(pid int auto_increment, org_name varchar(20), address varchar(100), contact_no varchar(50) ,website varchar(50),email varchar(20),requirement varchar(500),quantity int, Category varchar(20), primary key(pid), foreign key(Category) references available_categories(Category));
Commit;



use fpbpTest;
Create table fpbptest.fpbpUsers (pid int auto_increment primary key,email varchar(100), password varchar(50));

commit;