-- database created "fpbp" --
create database fpbp;
commit;

-- table available_categories will store different categories available--
Use fpbp;
Create table available_categories
( Category varchar(20) , primary key(Category));
commit;
-- 5 categories intered--
Insert into fpbp.available_categories(Category) values("Food");
Insert into fpbp.available_categories(Category) values("Housing");
Insert into fpbp.available_categories(Category) values("Clothing");
Insert into fpbp.available_categories(Category) values("Financial"); 
Insert into fpbp.available_categories(Category) values("Education");
commit;

-- table help provider created which stores the details of the providers--
use fpbp;
Create table helpProvider (pid int auto_increment,name varchar(50), address varchar(100), contact varchar(20), 
                        email varchar(50), hours_of_operation varchar(50), website varchar(50),Category varchar(20),primary key(sid), foreign key(Category)  references available_categories(Category));

Insert into helpProvider(name,address,contact,email,hours_of_operation,website,category) values ("Care To Share Outreach Center Inc.","5.31 miles away 5600 The Plaza, Charlotte, NC, 28215"
,"980-267-7896","info@caretosharenc.org","9:00 AM- 6:00 PM","","Food");
Commit;
Insert into helpProvider(name,address,contact,email,hours_of_operation,website,category) values ("Food Pantry"," 6.06 miles away    857 Eastway Drive, Charlotte, NC, 28205"
,"704-567-2128","","9:00 AM- 6:00 PM","https://fswm.breezechms.com/form/50ebbe","Food");

Insert into helpProvider(name,address,contact,email,hours_of_operation,website,category) values ("Arc of North Carolina Housing","343 East Six Forks Road Suite 320,Raleigh NC, 27609"," 800-662-8706","info@arcnc.org ","Mon-Fri- 08:30 AM - 05:00 PM ","http://arcnc.org/housing","Housing");

Insert into helpProvider(name,address,contact,email,hours_of_operation,website,category) values ("F.A.V.A.R","7913 Old Concord Rd. Charlotte NC, 28213","980-237-4787","favarministries@aol.com","Mon-Fri- 08:00 AM - 05:00 PM","http://www.favarministries.com/","Clothing");

Insert into helpProvider(name,address,contact,email,hours_of_operation,website,category) values ("On Ramp Resource Center ","119 E 8th St Charlotte NC, 28202","704-344-1111","","Mon-Fri- 08:00 AM - 05:00 PM","http://www.therelatives.org","Education");

Insert into helpProvider(name,address,contact,email,hours_of_operation,website,category) values ("The Good Fellows Club Inc","P.O. Box 28234 Charlotte NC, 28205","704-333-5040","goodfellowsclub@gmail.com ","Mon-Fri- 08:00 AM - 05:00 PM","http://goodfellowsclub.org","Financial");

commit;

-- table help seekers is used to store the details of seekers--
use fpbp;
Create table helpSeeker(pid int auto_increment, org_name varchar(20), address varchar(100), contact_no varchar(50) ,website varchar(50),email varchar(20),requirement varchar(500),quantity int, Category varchar(20), primary key(pid), foreign key(Category) references available_categories(Category));
Commit;
Insert into fpbp.helpSeeker(org_name,address,contact_no,website,email,requirement, quantity,Category) values("Loaves & Fishes","201 Stetson Drive, Charlotte, NC, 28262","704-523-4333","http://loavesandfishes.org/","","Food drive to collect food donations for 100 people",100,"Food");

Insert into fpbp.helpSeeker(org_name,address,contact_no,website,email,requirement, quantity,Category) values("Feeding America","500-B Spratt Street ,Charlotte, NC 28206","(704) 376-1785","http://www.feedingamerica.org/,","","Together, we can end hunger, but it’s going to require an active partnership between individuals like you, charity, the private sector and the government",100,"Food");

Insert into fpbp.helpSeeker(org_name,address,contact_no,website,email,requirement, quantity,Category) values("Rh Care Services"," PO Box 42993, Charlotte, NC, 28215","704-726-1223","http://rhcareservices.com","rhill@rhcare.com","Help People to find Housing",0,"Housing");

Insert into fpbp.helpSeeker(org_name,address,contact_no,website,email,requirement, quantity,Category) values("Care To Share","5600 The Plaza Charlotte NC, 28215","980-430-5913","","info@care.org","open-handed clothing drives",100,"Clothing");

Insert into fpbp.helpSeeker(org_name,address,contact_no,website,email,requirement, quantity,Category) values("Reading For Life","2801 Lucena Street Charlotte NC, 28206","704-918-4789","http://nhbwinc.com","Director@nhbwinc.com","Need volunteers for teaching arts, culture, health wellness, education and human service programs",30,"Education");

Insert into fpbp.helpSeeker(org_name,address,contact_no,website,email,requirement, quantity,Category) values("Back-To-School","6601 Old Statesville Rd, Huntersville, NC, 28078","704-947-8898","http://solidrock.org","","Help our organisation, by your donation so that we can help others with food, education, clothing",0,"Financial");

commit;

-- table fpbpUsers is used to store the registered user of the applications--
use fpbp;
Create table fpbpUsers (pid int auto_increment primary key,email varchar(100), password varchar(50));
insert into fpbpUsers(email,password) values("admin@gmail.com","admin@123");
commit;





