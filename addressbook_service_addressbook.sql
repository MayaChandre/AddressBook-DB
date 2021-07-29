#Uc1
create database AddressBook_Service;
show databases;
use AddressBook_Service;

#Uc2
create table AddressBook(
	id int unsigned not null auto_increment,
	first_name varchar (15) not null,
    last_name varchar (15) not null,
    address varchar (150) not null,
	city varchar (150) not null,
	state varchar (150) not null,
	zip int not null,
    phone_number long not null,
    email varchar (100) not null,
    primary key (id)

);

select * from  AddressBook;



#UC3

insert into AddressBook (first_name,last_name,address,city,state,zip,phone_number,email) values
('Maya','Chandre','Subhashnagar','bhainsa','telangana',402108,5864764867,'maya@gmail.com'),
('Nivrithi','Roy','Akurdi','Pune','maharashtra',405643,5364764557,'NR@gmail.com'),
('Prachi','Mankar','Nerul','NaviMumbai','maharashtra',754643,5364764232,'prach@gmail.com');


#UC4

select city from AddressBook where first_name = 'Maya';
update AddressBook set city = 'surat' where first_name = 'Maya'; 
update AddressBook set state = 'Gujrat' where first_name = 'Maya'; 
update AddressBook set Address = 'Gandhinagar' where first_name = 'Maya';
update AddressBook set zip = 288879 where first_name = 'Maya';  
update AddressBook set phone_number = 9852988879 where first_name = 'Maya';  
update AddressBook set email = 'maya@yahoo.com' where first_name = 'Maya';  
update AddressBook set email = 'Nivrithi@yahoo.com',
city = 'panvel',
state = 'Maharashtra'
 where first_name = 'Nivrithi';  

#UC5
delete from AddressBook
WHERE first_name = 'Maya';

#UC6
select * from AddressBook
where city = 'bhainsa' or state = 'telangana';

#UC7
SELECT COUNT(city or state)
FROM AddressBook;

#UC8
select first_name,
    city
  from AddressBook
  order by city asc;
  
  #UC9
Alter table AddressBook add type varchar(15) after last_name;
update  AddressBook set type='Family' where first_name ='Maya';
update  AddressBook set type='Profession' where first_name ='Nivrithi';
update  AddressBook set type='Friends' where first_name ='Prachi';

#UC10
SELECT COUNT(type) AS Number_Of_Contact_Person 
FROM AddressBook;

drop table AddressBook;

#UC11
insert into AddressBook (first_name,last_name,address,city,state,zip,phone_number,email) values
('Maya','Chandre','Phulenagar','bhainsa','telanagana',402108,5864764867,'minal@gmail.com');
update  AddressBook set type='Friend' where id = 4;






