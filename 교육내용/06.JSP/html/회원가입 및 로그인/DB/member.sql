create table member(id varchar2(20) primary key
	,passwd varchar2(200),name varchar2(20),email varchar2(30)
	,mobile varchar2(20),zipcode varchar2(10)
	,address1 varchar(200), address2 varchar(50)
    	,join_date date,last_login date,status number(1));