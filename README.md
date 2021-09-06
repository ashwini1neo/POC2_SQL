# POC2_SQL

Case #2 Write a query given the following data model:
 Query: Get list of Posts with latest 10 comments of each post authored by 'James Bond' 

--> create table author ( id int primary key not null, name varchar2(100) ) 


--> create table post( id int primary key not null, name varchar2(100), authorid int foreign key references  author(id), createdts datetime ) 


--> create table comment ( id int primary key not null, content varchar2(1000), postid int foreign key references  post(id) createdts datetime userid int       foreign key references id of table user ) 


--> create table user ( id int primary key not null, name varchar2(100) ) 
