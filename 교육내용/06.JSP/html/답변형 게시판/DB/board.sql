create table board(num number(4) primary key,id varchar2(20)
	,writer varchar2(50),subject varchar2(500),reg_date date
	,readcount number(4),ref number(4),re_step number(4)
	,re_level number(4),content varchar2(4000),ip varchar2(20),
	status number(1));

create sequence board_seq;