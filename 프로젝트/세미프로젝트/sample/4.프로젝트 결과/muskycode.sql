--------------------------------------------------------
--  ������ ������ - ������-2��-07-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_CNO
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_CNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NNO
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_NNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 541 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_OGROUP
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_OGROUP"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ONO
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_ONO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PNO
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_PNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_QNO
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_QNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_RNO
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_RNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "PERFUME"."CART" 
   (	"CNO" NUMBER(5,0), 
	"PNO" NUMBER(5,0), 
	"MID" VARCHAR2(20 BYTE), 
	"CQUANTITY" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "PERFUME"."MEMBER" 
   (	"MID" VARCHAR2(20 BYTE), 
	"MPW" VARCHAR2(100 BYTE), 
	"MNAME" VARCHAR2(20 BYTE), 
	"MADDRESS1" VARCHAR2(100 BYTE), 
	"MADDRESS2" VARCHAR2(100 BYTE), 
	"MZIP" VARCHAR2(20 BYTE), 
	"MPHONE" VARCHAR2(20 BYTE), 
	"MEMAIL" VARCHAR2(30 BYTE), 
	"MRESERVES" NUMBER(10,0), 
	"MGRADE" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "PERFUME"."NOTICE" 
   (	"NNO" NUMBER(5,0), 
	"NTITLE" VARCHAR2(40 BYTE), 
	"NCONTENT" VARCHAR2(2000 BYTE), 
	"NHIT" NUMBER(10,0), 
	"NDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDER
--------------------------------------------------------

  CREATE TABLE "PERFUME"."ORDER" 
   (	"ONO" NUMBER(5,0), 
	"PNO" NUMBER(5,0), 
	"MID" VARCHAR2(20 BYTE), 
	"ONAME" VARCHAR2(20 BYTE), 
	"OPHONE" VARCHAR2(40 BYTE), 
	"ODATE" DATE, 
	"OQUANTITY" NUMBER(5,0), 
	"OPAYMENT" VARCHAR2(30 BYTE), 
	"OADDRESS1" VARCHAR2(100 BYTE), 
	"OADDRESS2" VARCHAR2(100 BYTE), 
	"OZIP" VARCHAR2(20 BYTE), 
	"OSTATUS" NUMBER(5,0), 
	"OGROUP" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "PERFUME"."PRODUCT" 
   (	"PNO" NUMBER(5,0), 
	"PNAME" VARCHAR2(60 BYTE), 
	"PPRICE" NUMBER(6,0), 
	"PSTOCK" NUMBER(5,0), 
	"PCATEGORY" VARCHAR2(60 BYTE), 
	"PCONTENT" VARCHAR2(2000 BYTE), 
	"PIMGURL" VARCHAR2(500 BYTE), 
	"PSTATUS" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "PERFUME"."QNA" 
   (	"QNO" NUMBER(5,0), 
	"MID" VARCHAR2(20 BYTE), 
	"QDATE" DATE, 
	"QTITLE" VARCHAR2(50 BYTE), 
	"QCONTENT" VARCHAR2(1000 BYTE), 
	"QCATEGORY" VARCHAR2(30 BYTE), 
	"QANSWER" VARCHAR2(20 BYTE), 
	"QACONTENT" VARCHAR2(1000 BYTE), 
	"QREF" NUMBER(5,0), 
	"QREF_STEP" NUMBER(5,0), 
	"QREF_LEVEL" NUMBER(5,0), 
	"QADATE" DATE, 
	"QSTATUS" NUMBER(5,0), 
	"QHIT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "PERFUME"."REVIEW" 
   (	"RNO" NUMBER(5,0), 
	"MID" VARCHAR2(20 BYTE), 
	"RTITLE" VARCHAR2(40 BYTE), 
	"RCONTENT" VARCHAR2(1000 BYTE), 
	"RDATE" DATE, 
	"RHIT" NUMBER(10,0), 
	"RIMGURL" VARCHAR2(1000 BYTE), 
	"RSTATUS" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into PERFUME.CART
SET DEFINE OFF;
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (71,24,'test_1',2);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (27,24,'ab1111',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (40,12,'shTest',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (38,25,'shTest',3);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (39,24,'shTest',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (41,4,'shTest',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (47,16,'shTest',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (53,18,'shTest',6);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (135,41,'shTest2',3);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (42,19,'shTest',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (73,20,'test_1',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (22,12,'ab1111',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (25,11,'ab1111',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (129,42,'shTest2',7);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (142,41,'a111111',2);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (143,8,'a111111',2);
REM INSERTING into PERFUME.MEMBER
SET DEFINE OFF;
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('alfk11','3abeb5d91e44320198cfdf637aebeddb19bc235e2ae87c494f934f5d258657','������','����Ư����ġ�� �������� ������ 14','����ʹ�','63534','010-3825-1118','2443825@naver.com',0,9);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('a111111','33b83d92431548e1342493c235a9922af56dd34d53c9b72b37cf158489213e','���','���� ���۱� ���Ƿ�30�� 27','���','07031','010-3333-3333','095201a@n.com',1197,9);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('DDDDaa123','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','�Ƹ޸�ī��','��õ ��ȭ�� ��ȭ�� ����� 3-19','��ȭ����','23036','010-3825-1118','whgdk@naver.com',2000,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('ddong88','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','��','���� ������ ������6�� 11','4��','05399','010-3825-1118','2443825@naver.com',2000,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('esdel101n','94ae37e88b93e31881329f08f728f56e465932d86ba684f76ec89a15f222c96','�̱Ժ�','���� ��â�� ��ȭ�� ��̻�� 132-72','����','25357','010-2371-1829','rbqlstmxkdlf@gmail.com',0,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('qwe123','94ae37e88b93e31881329f08f728f56e465932d86ba684f76ec89a15f222c96','�̱Ժ�','���� ��â�� ��ȭ�� ��̻�� 132-72','����','25357','010-2371-1829','esdel101n@naver.com',2000,9);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('shTest2','b16f5f21d2d394a7e218947b27a0472dd77577f35f9fe30b1bc7644454ea2b','��ü��','���� ������ ������� 476','345','06120','010-2341-2341','qqq@qqq.com',0,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('ab1111','33b83d92431548e1342493c235a9922af56dd34d53c9b72b37cf158489213e','�質��','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480','016-2222-2222','095201a@naver.com',0,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('shTest','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','ťťť','���� ������ ������� 298','qqq','06253','010-2341-2341','qqq@qqq.com',0,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('asd123','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','�̱Ժ�',null,null,null,'010-2371-1829','esdel101n@naver.com',2000,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('test_1','fcb7887759dc8e72d69bd221697d2c6305a9f86a4a1368bd51cfd1ddffbd','�׽�Ʈ','����Ư����ġ�� �������� ������ 14','������','63534','010-3825-1118','2443825@naver.com',0,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('test_2','d4cbacadc9d176a3c0dfc9f33af4d0982cd89da61657ffe09c5a40afb476845d','�׽�Ʈ','����Ư����ġ�� �������� ������ 14','������','63534','010-3825-1118','2443825@naver.com',2000,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('abc123','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','���ӳ���','��� ������ �д籸 ����Ǳ��� 477','���','13480','010-4444-4444','095201a@naver.com',2000,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('alfk13','3abeb5d91e44320198cfdf637aebeddb19bc235e2ae87c494f934f5d258657','����','���� ������ ������� 124','4��','06234','010-3825-1118','2443825@naver.com',2000,1);
REM INSERTING into PERFUME.NOTICE
SET DEFINE OFF;
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (275,'�׽�Ʈ-270','�Խñ� ����-270',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (273,'�׽�Ʈ-268','�Խñ� ����-268',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (274,'�׽�Ʈ-269','�Խñ� ����-269',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (276,'�׽�Ʈ-271','�Խñ� ����-271',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (277,'�׽�Ʈ-272','�Խñ� ����-272',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (278,'�׽�Ʈ-273','�Խñ� ����-273',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (279,'�׽�Ʈ-274','�Խñ� ����-274',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (280,'�׽�Ʈ-275','�Խñ� ����-275',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (281,'�׽�Ʈ-276','�Խñ� ����-276',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (282,'�׽�Ʈ-277','�Խñ� ����-277',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (283,'�׽�Ʈ-278','�Խñ� ����-278',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (284,'�׽�Ʈ-279','�Խñ� ����-279',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (285,'�׽�Ʈ-280','�Խñ� ����-280',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (286,'�׽�Ʈ-281','�Խñ� ����-281',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (287,'�׽�Ʈ-282','�Խñ� ����-282',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (288,'�׽�Ʈ-283','�Խñ� ����-283',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (289,'�׽�Ʈ-284','�Խñ� ����-284',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (290,'�׽�Ʈ-285','�Խñ� ����-285',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (291,'�׽�Ʈ-286','�Խñ� ����-286',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (292,'�׽�Ʈ-287','�Խñ� ����-287',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (293,'�׽�Ʈ-288','�Խñ� ����-288',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (294,'�׽�Ʈ-289','�Խñ� ����-289',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (295,'�׽�Ʈ-290','�Խñ� ����-290',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (296,'�׽�Ʈ-291','�Խñ� ����-291',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (297,'�׽�Ʈ-292','�Խñ� ����-292',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (298,'�׽�Ʈ-293','�Խñ� ����-293',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (299,'�׽�Ʈ-294','�Խñ� ����-294',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (300,'�׽�Ʈ-295','�Խñ� ����-295',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (301,'�׽�Ʈ-296','�Խñ� ����-296',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (302,'�׽�Ʈ-297','�Խñ� ����-297',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (303,'�׽�Ʈ-298','�Խñ� ����-298',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (304,'�׽�Ʈ-299','�Խñ� ����-299',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (305,'�׽�Ʈ-300','�Խñ� ����-300',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (306,'�׽�Ʈ-301','�Խñ� ����-301',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (307,'�׽�Ʈ-302','�Խñ� ����-302',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (308,'�׽�Ʈ-303','�Խñ� ����-303',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (309,'�׽�Ʈ-304','�Խñ� ����-304',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (310,'�׽�Ʈ-305','�Խñ� ����-305',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (311,'�׽�Ʈ-306','�Խñ� ����-306',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (312,'�׽�Ʈ-307','�Խñ� ����-307',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (313,'�׽�Ʈ-308','�Խñ� ����-308',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (314,'�׽�Ʈ-309','�Խñ� ����-309',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (315,'�׽�Ʈ-310','�Խñ� ����-310',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (316,'�׽�Ʈ-311','�Խñ� ����-311',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (317,'�׽�Ʈ-312','�Խñ� ����-312',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (318,'�׽�Ʈ-313','�Խñ� ����-313',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (319,'�׽�Ʈ-314','�Խñ� ����-314',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (320,'�׽�Ʈ-315','�Խñ� ����-315',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (321,'�׽�Ʈ-316','�Խñ� ����-316',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (322,'�׽�Ʈ-317','�Խñ� ����-317',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (323,'�׽�Ʈ-318','�Խñ� ����-318',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (324,'�׽�Ʈ-319','�Խñ� ����-319',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (325,'�׽�Ʈ-320','�Խñ� ����-320',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (326,'�׽�Ʈ-321','�Խñ� ����-321',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (327,'�׽�Ʈ-322','�Խñ� ����-322',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (328,'�׽�Ʈ-323','�Խñ� ����-323',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (329,'�׽�Ʈ-324','�Խñ� ����-324',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (330,'�׽�Ʈ-325','�Խñ� ����-325',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (331,'�׽�Ʈ-326','�Խñ� ����-326',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (332,'�׽�Ʈ-327','�Խñ� ����-327',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (333,'�׽�Ʈ-328','�Խñ� ����-328',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (334,'�׽�Ʈ-329','�Խñ� ����-329',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (335,'�׽�Ʈ-330','�Խñ� ����-330',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (336,'�׽�Ʈ-331','�Խñ� ����-331',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (337,'�׽�Ʈ-332','�Խñ� ����-332',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (338,'�׽�Ʈ-333','�Խñ� ����-333',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (339,'�׽�Ʈ-334','�Խñ� ����-334',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (340,'�׽�Ʈ-335','�Խñ� ����-335',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (341,'�׽�Ʈ-336','�Խñ� ����-336',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (342,'�׽�Ʈ-337','�Խñ� ����-337',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (343,'�׽�Ʈ-338','�Խñ� ����-338',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (344,'�׽�Ʈ-339','�Խñ� ����-339',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (345,'�׽�Ʈ-340','�Խñ� ����-340',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (346,'�׽�Ʈ-341','�Խñ� ����-341',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (347,'�׽�Ʈ-342','�Խñ� ����-342',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (348,'�׽�Ʈ-343','�Խñ� ����-343',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (349,'�׽�Ʈ-344','�Խñ� ����-344',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (350,'�׽�Ʈ-345','�Խñ� ����-345',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (351,'�׽�Ʈ-346','�Խñ� ����-346',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (352,'�׽�Ʈ-347','�Խñ� ����-347',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (353,'�׽�Ʈ-348','�Խñ� ����-348',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (354,'�׽�Ʈ-349','�Խñ� ����-349',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (355,'�׽�Ʈ-350','�Խñ� ����-350',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (356,'�׽�Ʈ-351','�Խñ� ����-351',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (357,'�׽�Ʈ-352','�Խñ� ����-352',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (358,'�׽�Ʈ-353','�Խñ� ����-353',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (359,'�׽�Ʈ-354','�Խñ� ����-354',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (360,'�׽�Ʈ-355','�Խñ� ����-355',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (361,'�׽�Ʈ-356','�Խñ� ����-356',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (362,'�׽�Ʈ-357','�Խñ� ����-357',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (363,'�׽�Ʈ-358','�Խñ� ����-358',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (364,'�׽�Ʈ-359','�Խñ� ����-359',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (365,'�׽�Ʈ-360','�Խñ� ����-360',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (366,'�׽�Ʈ-361','�Խñ� ����-361',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (367,'�׽�Ʈ-362','�Խñ� ����-362',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (368,'�׽�Ʈ-363','�Խñ� ����-363',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (369,'�׽�Ʈ-364','�Խñ� ����-364',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (370,'�׽�Ʈ-365','�Խñ� ����-365',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (371,'�׽�Ʈ-366','�Խñ� ����-366',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (372,'�׽�Ʈ-367','�Խñ� ����-367',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (373,'�׽�Ʈ-368','�Խñ� ����-368',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (374,'�׽�Ʈ-369','�Խñ� ����-369',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (375,'�׽�Ʈ-370','�Խñ� ����-370',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (376,'�׽�Ʈ-371','�Խñ� ����-371',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (377,'�׽�Ʈ-372','�Խñ� ����-372',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (378,'�׽�Ʈ-373','�Խñ� ����-373',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (379,'�׽�Ʈ-374','�Խñ� ����-374',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (380,'�׽�Ʈ-375','�Խñ� ����-375',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (381,'�׽�Ʈ-376','�Խñ� ����-376',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (382,'�׽�Ʈ-377','�Խñ� ����-377',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (383,'�׽�Ʈ-378','�Խñ� ����-378',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (384,'�׽�Ʈ-379','�Խñ� ����-379',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (385,'�׽�Ʈ-380','�Խñ� ����-380',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (386,'�׽�Ʈ-381','�Խñ� ����-381',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (387,'�׽�Ʈ-382','�Խñ� ����-382',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (388,'�׽�Ʈ-383','�Խñ� ����-383',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (389,'�׽�Ʈ-384','�Խñ� ����-384',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (390,'�׽�Ʈ-385','�Խñ� ����-385',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (391,'�׽�Ʈ-386','�Խñ� ����-386',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (392,'�׽�Ʈ-387','�Խñ� ����-387',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (393,'�׽�Ʈ-388','�Խñ� ����-388',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (394,'�׽�Ʈ-389','�Խñ� ����-389',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (395,'�׽�Ʈ-390','�Խñ� ����-390',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (396,'�׽�Ʈ-391','�Խñ� ����-391',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (397,'�׽�Ʈ-392','�Խñ� ����-392',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (398,'�׽�Ʈ-393','�Խñ� ����-393',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (399,'�׽�Ʈ-394','�Խñ� ����-394',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (400,'�׽�Ʈ-395','�Խñ� ����-395',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (401,'�׽�Ʈ-396','�Խñ� ����-396',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (402,'�׽�Ʈ-397','�Խñ� ����-397',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (403,'�׽�Ʈ-398','�Խñ� ����-398',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (404,'�׽�Ʈ-399','�Խñ� ����-399',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (405,'�׽�Ʈ-400','�Խñ� ����-400',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (406,'�׽�Ʈ-401','�Խñ� ����-401',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (407,'�׽�Ʈ-402','�Խñ� ����-402',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (1,'asdfasdf','asdfasdfasdf',3,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (2,'asdfasdf','asdfadsf',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (408,'�׽�Ʈ-403','�Խñ� ����-403',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (409,'�׽�Ʈ-404','�Խñ� ����-404',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (410,'�׽�Ʈ-405','�Խñ� ����-405',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (411,'�׽�Ʈ-406','�Խñ� ����-406',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (412,'�׽�Ʈ-407','�Խñ� ����-407',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (413,'�׽�Ʈ-408','�Խñ� ����-408',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (414,'�׽�Ʈ-409','�Խñ� ����-409',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (415,'�׽�Ʈ-410','�Խñ� ����-410',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (416,'�׽�Ʈ-411','�Խñ� ����-411',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (417,'�׽�Ʈ-412','�Խñ� ����-412',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (418,'�׽�Ʈ-413','�Խñ� ����-413',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (419,'�׽�Ʈ-414','�Խñ� ����-414',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (420,'�׽�Ʈ-415','�Խñ� ����-415',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (421,'�׽�Ʈ-416','�Խñ� ����-416',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (422,'�׽�Ʈ-417','�Խñ� ����-417',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (423,'�׽�Ʈ-418','�Խñ� ����-418',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (424,'�׽�Ʈ-419','�Խñ� ����-419',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (425,'�׽�Ʈ-420','�Խñ� ����-420',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (426,'�׽�Ʈ-421','�Խñ� ����-421',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (427,'�׽�Ʈ-422','�Խñ� ����-422',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (428,'�׽�Ʈ-423','�Խñ� ����-423',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (429,'�׽�Ʈ-424','�Խñ� ����-424',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (430,'�׽�Ʈ-425','�Խñ� ����-425',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (431,'�׽�Ʈ-426','�Խñ� ����-426',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (432,'�׽�Ʈ-427','�Խñ� ����-427',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (433,'�׽�Ʈ-428','�Խñ� ����-428',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (434,'�׽�Ʈ-429','�Խñ� ����-429',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (435,'�׽�Ʈ-430','�Խñ� ����-430',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (436,'�׽�Ʈ-431','�Խñ� ����-431',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (437,'�׽�Ʈ-432','�Խñ� ����-432',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (438,'�׽�Ʈ-433','�Խñ� ����-433',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (439,'�׽�Ʈ-434','�Խñ� ����-434',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (440,'�׽�Ʈ-435','�Խñ� ����-435',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (441,'�׽�Ʈ-436','�Խñ� ����-436',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (442,'�׽�Ʈ-437','�Խñ� ����-437',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (443,'�׽�Ʈ-438','�Խñ� ����-438',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (444,'�׽�Ʈ-439','�Խñ� ����-439',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (445,'�׽�Ʈ-440','�Խñ� ����-440',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (446,'�׽�Ʈ-441','�Խñ� ����-441',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (447,'�׽�Ʈ-442','�Խñ� ����-442',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (448,'�׽�Ʈ-443','�Խñ� ����-443',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (449,'�׽�Ʈ-444','�Խñ� ����-444',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (450,'�׽�Ʈ-445','�Խñ� ����-445',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (451,'�׽�Ʈ-446','�Խñ� ����-446',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (452,'�׽�Ʈ-447','�Խñ� ����-447',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (453,'�׽�Ʈ-448','�Խñ� ����-448',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (454,'�׽�Ʈ-449','�Խñ� ����-449',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (455,'�׽�Ʈ-450','�Խñ� ����-450',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (456,'�׽�Ʈ-451','�Խñ� ����-451',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (457,'�׽�Ʈ-452','�Խñ� ����-452',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (458,'�׽�Ʈ-453','�Խñ� ����-453',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (459,'�׽�Ʈ-454','�Խñ� ����-454',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (460,'�׽�Ʈ-455','�Խñ� ����-455',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (461,'�׽�Ʈ-456','�Խñ� ����-456',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (462,'�׽�Ʈ-457','�Խñ� ����-457',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (463,'�׽�Ʈ-458','�Խñ� ����-458',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (464,'�׽�Ʈ-459','�Խñ� ����-459',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (465,'�׽�Ʈ-460','�Խñ� ����-460',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (466,'�׽�Ʈ-461','�Խñ� ����-461',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (467,'�׽�Ʈ-462','�Խñ� ����-462',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (468,'�׽�Ʈ-463','�Խñ� ����-463',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (469,'�׽�Ʈ-464','�Խñ� ����-464',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (470,'�׽�Ʈ-465','�Խñ� ����-465',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (471,'�׽�Ʈ-466','�Խñ� ����-466',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (472,'�׽�Ʈ-467','�Խñ� ����-467',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (473,'�׽�Ʈ-468','�Խñ� ����-468',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (474,'�׽�Ʈ-469','�Խñ� ����-469',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (475,'�׽�Ʈ-470','�Խñ� ����-470',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (476,'�׽�Ʈ-471','�Խñ� ����-471',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (477,'�׽�Ʈ-472','�Խñ� ����-472',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (478,'�׽�Ʈ-473','�Խñ� ����-473',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (479,'�׽�Ʈ-474','�Խñ� ����-474',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (480,'�׽�Ʈ-475','�Խñ� ����-475',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (481,'�׽�Ʈ-476','�Խñ� ����-476',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (482,'�׽�Ʈ-477','�Խñ� ����-477',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (483,'�׽�Ʈ-478','�Խñ� ����-478',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (484,'�׽�Ʈ-479','�Խñ� ����-479',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (485,'�׽�Ʈ-480','�Խñ� ����-480',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (486,'�׽�Ʈ-481','�Խñ� ����-481',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (487,'�׽�Ʈ-482','�Խñ� ����-482',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (488,'�׽�Ʈ-483','�Խñ� ����-483',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (489,'�׽�Ʈ-484','�Խñ� ����-484',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (490,'�׽�Ʈ-485','�Խñ� ����-485',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (491,'�׽�Ʈ-486','�Խñ� ����-486',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (492,'�׽�Ʈ-487','�Խñ� ����-487',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (493,'�׽�Ʈ-488','�Խñ� ����-488',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (494,'�׽�Ʈ-489','�Խñ� ����-489',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (495,'�׽�Ʈ-490','�Խñ� ����-490',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (496,'�׽�Ʈ-491','�Խñ� ����-491',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (497,'�׽�Ʈ-492','�Խñ� ����-492',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (498,'�׽�Ʈ-493','�Խñ� ����-493',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (499,'�׽�Ʈ-494','�Խñ� ����-494',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (500,'�׽�Ʈ-495','�Խñ� ����-495',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (501,'�׽�Ʈ-496','�Խñ� ����-496',2,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (502,'�׽�Ʈ-497 �����մϴ�','�Խñ� ����-497��������������',12,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (521,'���������Դϴ�.','���������Դϴ�. ���񽺴� �����ϴ�.',4,to_date('22/02/07','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (507,'ss','sss',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (508,'sdsdsdsd','sdsdsds',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (509,'asdfasdf','asdfasdf',2,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (510,'���� �Ƕ�','�Ŀ�',5,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (512,'������','������',22,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (3,'asdfasdf','asdfasdfads',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (4,null,null,1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (5,'sdafasdfasd','fasdfasdfasdf',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (6,'�׽�Ʈ-1','�Խñ� ����-1',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (7,'�׽�Ʈ-2','�Խñ� ����-2',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (8,'�׽�Ʈ-3','�Խñ� ����-3',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (9,'�׽�Ʈ-4','�Խñ� ����-4',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (10,'�׽�Ʈ-5','�Խñ� ����-5',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (11,'�׽�Ʈ-6','�Խñ� ����-6',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (12,'�׽�Ʈ-7','�Խñ� ����-7',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (13,'�׽�Ʈ-8','�Խñ� ����-8',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (14,'�׽�Ʈ-9','�Խñ� ����-9',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (15,'�׽�Ʈ-10','�Խñ� ����-10',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (16,'�׽�Ʈ-11','�Խñ� ����-11',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (17,'�׽�Ʈ-12','�Խñ� ����-12',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (18,'�׽�Ʈ-13','�Խñ� ����-13',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (19,'�׽�Ʈ-14','�Խñ� ����-14',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (20,'�׽�Ʈ-15','�Խñ� ����-15',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (21,'�׽�Ʈ-16','�Խñ� ����-16',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (22,'�׽�Ʈ-17','�Խñ� ����-17',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (23,'�׽�Ʈ-18','�Խñ� ����-18',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (24,'�׽�Ʈ-19','�Խñ� ����-19',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (25,'�׽�Ʈ-20','�Խñ� ����-20',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (26,'�׽�Ʈ-21','�Խñ� ����-21',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (27,'�׽�Ʈ-22','�Խñ� ����-22',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (28,'�׽�Ʈ-23','�Խñ� ����-23',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (29,'�׽�Ʈ-24','�Խñ� ����-24',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (30,'�׽�Ʈ-25','�Խñ� ����-25',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (31,'�׽�Ʈ-26','�Խñ� ����-26',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (32,'�׽�Ʈ-27','�Խñ� ����-27',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (33,'�׽�Ʈ-28','�Խñ� ����-28',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (34,'�׽�Ʈ-29','�Խñ� ����-29',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (35,'�׽�Ʈ-30','�Խñ� ����-30',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (36,'�׽�Ʈ-31','�Խñ� ����-31',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (37,'�׽�Ʈ-32','�Խñ� ����-32',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (38,'�׽�Ʈ-33','�Խñ� ����-33',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (39,'�׽�Ʈ-34','�Խñ� ����-34',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (40,'�׽�Ʈ-35','�Խñ� ����-35',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (41,'�׽�Ʈ-36','�Խñ� ����-36',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (42,'�׽�Ʈ-37','�Խñ� ����-37',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (43,'�׽�Ʈ-38','�Խñ� ����-38',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (44,'�׽�Ʈ-39','�Խñ� ����-39',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (45,'�׽�Ʈ-40','�Խñ� ����-40',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (46,'�׽�Ʈ-41','�Խñ� ����-41',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (47,'�׽�Ʈ-42','�Խñ� ����-42',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (48,'�׽�Ʈ-43','�Խñ� ����-43',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (49,'�׽�Ʈ-44','�Խñ� ����-44',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (50,'�׽�Ʈ-45','�Խñ� ����-45',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (51,'�׽�Ʈ-46','�Խñ� ����-46',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (52,'�׽�Ʈ-47','�Խñ� ����-47',4,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (53,'�׽�Ʈ-48','�Խñ� ����-48',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (54,'�׽�Ʈ-49','�Խñ� ����-49',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (55,'�׽�Ʈ-50','�Խñ� ����-50',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (56,'�׽�Ʈ-51','�Խñ� ����-51',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (57,'�׽�Ʈ-52','�Խñ� ����-52',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (58,'�׽�Ʈ-53','�Խñ� ����-53',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (59,'�׽�Ʈ-54','�Խñ� ����-54',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (60,'�׽�Ʈ-55','�Խñ� ����-55',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (61,'�׽�Ʈ-56','�Խñ� ����-56',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (62,'�׽�Ʈ-57','�Խñ� ����-57',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (63,'�׽�Ʈ-58','�Խñ� ����-58',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (64,'�׽�Ʈ-59','�Խñ� ����-59',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (65,'�׽�Ʈ-60','�Խñ� ����-60',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (66,'�׽�Ʈ-61','�Խñ� ����-61',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (67,'�׽�Ʈ-62','�Խñ� ����-62',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (68,'�׽�Ʈ-63','�Խñ� ����-63',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (69,'�׽�Ʈ-64','�Խñ� ����-64',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (70,'�׽�Ʈ-65','�Խñ� ����-65',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (71,'�׽�Ʈ-66','�Խñ� ����-66',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (72,'�׽�Ʈ-67','�Խñ� ����-67',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (73,'�׽�Ʈ-68','�Խñ� ����-68',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (74,'�׽�Ʈ-69','�Խñ� ����-69',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (75,'�׽�Ʈ-70','�Խñ� ����-70',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (76,'�׽�Ʈ-71','�Խñ� ����-71',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (77,'�׽�Ʈ-72','�Խñ� ����-72',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (78,'�׽�Ʈ-73','�Խñ� ����-73',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (79,'�׽�Ʈ-74','�Խñ� ����-74',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (80,'�׽�Ʈ-75','�Խñ� ����-75',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (81,'�׽�Ʈ-76','�Խñ� ����-76',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (82,'�׽�Ʈ-77','�Խñ� ����-77',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (83,'�׽�Ʈ-78','�Խñ� ����-78',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (84,'�׽�Ʈ-79','�Խñ� ����-79',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (85,'�׽�Ʈ-80','�Խñ� ����-80',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (86,'�׽�Ʈ-81','�Խñ� ����-81',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (87,'�׽�Ʈ-82','�Խñ� ����-82',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (88,'�׽�Ʈ-83','�Խñ� ����-83',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (89,'�׽�Ʈ-84','�Խñ� ����-84',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (90,'�׽�Ʈ-85','�Խñ� ����-85',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (91,'�׽�Ʈ-86','�Խñ� ����-86',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (92,'�׽�Ʈ-87','�Խñ� ����-87',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (93,'�׽�Ʈ-88','�Խñ� ����-88',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (94,'�׽�Ʈ-89','�Խñ� ����-89',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (95,'�׽�Ʈ-90','�Խñ� ����-90',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (96,'�׽�Ʈ-91','�Խñ� ����-91',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (97,'�׽�Ʈ-92','�Խñ� ����-92',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (98,'�׽�Ʈ-93','�Խñ� ����-93',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (99,'�׽�Ʈ-94','�Խñ� ����-94',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (100,'�׽�Ʈ-95','�Խñ� ����-95',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (101,'�׽�Ʈ-96','�Խñ� ����-96',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (102,'�׽�Ʈ-97','�Խñ� ����-97',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (103,'�׽�Ʈ-98','�Խñ� ����-98',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (104,'�׽�Ʈ-99','�Խñ� ����-99',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (105,'�׽�Ʈ-100','�Խñ� ����-100',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (106,'�׽�Ʈ-101','�Խñ� ����-101',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (107,'�׽�Ʈ-102','�Խñ� ����-102',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (108,'�׽�Ʈ-103','�Խñ� ����-103',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (109,'�׽�Ʈ-104','�Խñ� ����-104',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (110,'�׽�Ʈ-105','�Խñ� ����-105',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (111,'�׽�Ʈ-106','�Խñ� ����-106',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (112,'�׽�Ʈ-107','�Խñ� ����-107',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (113,'�׽�Ʈ-108','�Խñ� ����-108',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (114,'�׽�Ʈ-109','�Խñ� ����-109',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (115,'�׽�Ʈ-110','�Խñ� ����-110',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (116,'�׽�Ʈ-111','�Խñ� ����-111',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (117,'�׽�Ʈ-112','�Խñ� ����-112',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (118,'�׽�Ʈ-113','�Խñ� ����-113',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (119,'�׽�Ʈ-114','�Խñ� ����-114',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (120,'�׽�Ʈ-115','�Խñ� ����-115',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (121,'�׽�Ʈ-116','�Խñ� ����-116',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (122,'�׽�Ʈ-117','�Խñ� ����-117',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (123,'�׽�Ʈ-118','�Խñ� ����-118',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (124,'�׽�Ʈ-119','�Խñ� ����-119',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (125,'�׽�Ʈ-120','�Խñ� ����-120',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (126,'�׽�Ʈ-121','�Խñ� ����-121',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (127,'�׽�Ʈ-122','�Խñ� ����-122',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (128,'�׽�Ʈ-123','�Խñ� ����-123',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (129,'�׽�Ʈ-124','�Խñ� ����-124',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (130,'�׽�Ʈ-125','�Խñ� ����-125',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (131,'�׽�Ʈ-126','�Խñ� ����-126',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (132,'�׽�Ʈ-127','�Խñ� ����-127',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (133,'�׽�Ʈ-128','�Խñ� ����-128',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (134,'�׽�Ʈ-129','�Խñ� ����-129',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (135,'�׽�Ʈ-130','�Խñ� ����-130',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (136,'�׽�Ʈ-131','�Խñ� ����-131',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (137,'�׽�Ʈ-132','�Խñ� ����-132',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (138,'�׽�Ʈ-133','�Խñ� ����-133',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (139,'�׽�Ʈ-134','�Խñ� ����-134',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (140,'�׽�Ʈ-135','�Խñ� ����-135',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (143,'�׽�Ʈ-138','�Խñ� ����-138',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (144,'�׽�Ʈ-139','�Խñ� ����-139',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (145,'�׽�Ʈ-140','�Խñ� ����-140',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (146,'�׽�Ʈ-141','�Խñ� ����-141',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (147,'�׽�Ʈ-142','�Խñ� ����-142',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (148,'�׽�Ʈ-143','�Խñ� ����-143',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (149,'�׽�Ʈ-144','�Խñ� ����-144',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (150,'�׽�Ʈ-145','�Խñ� ����-145',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (151,'�׽�Ʈ-146','�Խñ� ����-146',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (152,'�׽�Ʈ-147','�Խñ� ����-147',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (153,'�׽�Ʈ-148','�Խñ� ����-148',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (154,'�׽�Ʈ-149','�Խñ� ����-149',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (155,'�׽�Ʈ-150','�Խñ� ����-150',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (156,'�׽�Ʈ-151','�Խñ� ����-151',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (157,'�׽�Ʈ-152','�Խñ� ����-152',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (158,'�׽�Ʈ-153','�Խñ� ����-153',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (159,'�׽�Ʈ-154','�Խñ� ����-154',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (160,'�׽�Ʈ-155','�Խñ� ����-155',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (141,'�׽�Ʈ-136','�Խñ� ����-136',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (142,'�׽�Ʈ-137','�Խñ� ����-137',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (161,'�׽�Ʈ-156','�Խñ� ����-156',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (162,'�׽�Ʈ-157','�Խñ� ����-157',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (163,'�׽�Ʈ-158','�Խñ� ����-158',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (164,'�׽�Ʈ-159','�Խñ� ����-159',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (165,'�׽�Ʈ-160','�Խñ� ����-160',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (166,'�׽�Ʈ-161','�Խñ� ����-161',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (167,'�׽�Ʈ-162','�Խñ� ����-162',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (168,'�׽�Ʈ-163','�Խñ� ����-163',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (169,'�׽�Ʈ-164','�Խñ� ����-164',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (170,'�׽�Ʈ-165','�Խñ� ����-165',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (171,'�׽�Ʈ-166','�Խñ� ����-166',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (172,'�׽�Ʈ-167','�Խñ� ����-167',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (173,'�׽�Ʈ-168','�Խñ� ����-168',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (174,'�׽�Ʈ-169','�Խñ� ����-169',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (175,'�׽�Ʈ-170','�Խñ� ����-170',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (176,'�׽�Ʈ-171','�Խñ� ����-171',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (177,'�׽�Ʈ-172','�Խñ� ����-172',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (178,'�׽�Ʈ-173','�Խñ� ����-173',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (179,'�׽�Ʈ-174','�Խñ� ����-174',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (180,'�׽�Ʈ-175','�Խñ� ����-175',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (181,'�׽�Ʈ-176','�Խñ� ����-176',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (182,'�׽�Ʈ-177','�Խñ� ����-177',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (183,'�׽�Ʈ-178','�Խñ� ����-178',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (184,'�׽�Ʈ-179','�Խñ� ����-179',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (185,'�׽�Ʈ-180','�Խñ� ����-180',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (186,'�׽�Ʈ-181','�Խñ� ����-181',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (187,'�׽�Ʈ-182','�Խñ� ����-182',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (188,'�׽�Ʈ-183','�Խñ� ����-183',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (189,'�׽�Ʈ-184','�Խñ� ����-184',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (190,'�׽�Ʈ-185','�Խñ� ����-185',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (191,'�׽�Ʈ-186','�Խñ� ����-186',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (192,'�׽�Ʈ-187','�Խñ� ����-187',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (193,'�׽�Ʈ-188','�Խñ� ����-188',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (194,'�׽�Ʈ-189','�Խñ� ����-189',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (195,'�׽�Ʈ-190','�Խñ� ����-190',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (196,'�׽�Ʈ-191','�Խñ� ����-191',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (197,'�׽�Ʈ-192','�Խñ� ����-192',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (198,'�׽�Ʈ-193','�Խñ� ����-193',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (199,'�׽�Ʈ-194','�Խñ� ����-194',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (200,'�׽�Ʈ-195','�Խñ� ����-195',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (201,'�׽�Ʈ-196','�Խñ� ����-196',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (202,'�׽�Ʈ-197','�Խñ� ����-197',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (203,'�׽�Ʈ-198','�Խñ� ����-198',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (204,'�׽�Ʈ-199','�Խñ� ����-199',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (205,'�׽�Ʈ-200','�Խñ� ����-200',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (206,'�׽�Ʈ-201','�Խñ� ����-201',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (207,'�׽�Ʈ-202','�Խñ� ����-202',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (208,'�׽�Ʈ-203','�Խñ� ����-203',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (209,'�׽�Ʈ-204','�Խñ� ����-204',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (210,'�׽�Ʈ-205','�Խñ� ����-205',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (211,'�׽�Ʈ-206','�Խñ� ����-206',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (212,'�׽�Ʈ-207','�Խñ� ����-207',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (213,'�׽�Ʈ-208','�Խñ� ����-208',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (214,'�׽�Ʈ-209','�Խñ� ����-209',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (215,'�׽�Ʈ-210','�Խñ� ����-210',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (216,'�׽�Ʈ-211','�Խñ� ����-211',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (217,'�׽�Ʈ-212','�Խñ� ����-212',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (218,'�׽�Ʈ-213','�Խñ� ����-213',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (219,'�׽�Ʈ-214','�Խñ� ����-214',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (220,'�׽�Ʈ-215','�Խñ� ����-215',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (221,'�׽�Ʈ-216','�Խñ� ����-216',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (222,'�׽�Ʈ-217','�Խñ� ����-217',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (223,'�׽�Ʈ-218','�Խñ� ����-218',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (224,'�׽�Ʈ-219','�Խñ� ����-219',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (225,'�׽�Ʈ-220','�Խñ� ����-220',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (226,'�׽�Ʈ-221','�Խñ� ����-221',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (227,'�׽�Ʈ-222','�Խñ� ����-222',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (228,'�׽�Ʈ-223','�Խñ� ����-223',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (229,'�׽�Ʈ-224','�Խñ� ����-224',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (230,'�׽�Ʈ-225','�Խñ� ����-225',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (231,'�׽�Ʈ-226','�Խñ� ����-226',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (232,'�׽�Ʈ-227','�Խñ� ����-227',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (233,'�׽�Ʈ-228','�Խñ� ����-228',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (234,'�׽�Ʈ-229','�Խñ� ����-229',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (235,'�׽�Ʈ-230','�Խñ� ����-230',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (236,'�׽�Ʈ-231','�Խñ� ����-231',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (237,'�׽�Ʈ-232','�Խñ� ����-232',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (238,'�׽�Ʈ-233','�Խñ� ����-233',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (239,'�׽�Ʈ-234','�Խñ� ����-234',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (240,'�׽�Ʈ-235','�Խñ� ����-235',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (241,'�׽�Ʈ-236','�Խñ� ����-236',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (242,'�׽�Ʈ-237','�Խñ� ����-237',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (243,'�׽�Ʈ-238','�Խñ� ����-238',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (244,'�׽�Ʈ-239','�Խñ� ����-239',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (245,'�׽�Ʈ-240','�Խñ� ����-240',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (246,'�׽�Ʈ-241','�Խñ� ����-241',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (247,'�׽�Ʈ-242','�Խñ� ����-242',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (248,'�׽�Ʈ-243','�Խñ� ����-243',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (249,'�׽�Ʈ-244','�Խñ� ����-244',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (250,'�׽�Ʈ-245','�Խñ� ����-245',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (251,'�׽�Ʈ-246','�Խñ� ����-246',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (252,'�׽�Ʈ-247','�Խñ� ����-247',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (253,'�׽�Ʈ-248','�Խñ� ����-248',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (254,'�׽�Ʈ-249','�Խñ� ����-249',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (255,'�׽�Ʈ-250','�Խñ� ����-250',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (256,'�׽�Ʈ-251','�Խñ� ����-251',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (257,'�׽�Ʈ-252','�Խñ� ����-252',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (258,'�׽�Ʈ-253','�Խñ� ����-253',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (259,'�׽�Ʈ-254','�Խñ� ����-254',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (260,'�׽�Ʈ-255','�Խñ� ����-255',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (261,'�׽�Ʈ-256','�Խñ� ����-256',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (262,'�׽�Ʈ-257','�Խñ� ����-257',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (263,'�׽�Ʈ-258','�Խñ� ����-258',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (264,'�׽�Ʈ-259','�Խñ� ����-259',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (265,'�׽�Ʈ-260','�Խñ� ����-260',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (266,'�׽�Ʈ-261','�Խñ� ����-261',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (267,'�׽�Ʈ-262','�Խñ� ����-262',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (268,'�׽�Ʈ-263','�Խñ� ����-263',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (269,'�׽�Ʈ-264','�Խñ� ����-264',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (270,'�׽�Ʈ-265','�Խñ� ����-265',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (271,'�׽�Ʈ-266','�Խñ� ����-266',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (272,'�׽�Ʈ-267','�Խñ� ����-267',1,to_date('22/01/29','RR/MM/DD'));
REM INSERTING into PERFUME."ORDER"
SET DEFINE OFF;
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (4,13,'ab1111','�質��','016-2222-2222',to_date('22/02/03','RR/MM/DD'),3,'card','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',1,4);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (5,13,'ab1111','�質��','016-2222-2222',to_date('22/02/03','RR/MM/DD'),3,'card','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',1,5);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (6,12,'ab1111','�質��','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',1,6);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (7,12,'ab1111','�質��','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',3,7);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (8,12,'ab1111','�質��','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',1,8);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (9,12,'ab1111','�質��','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',1,9);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (27,9,'a111111','���','010-3333-3333',to_date('22/02/05','RR/MM/DD'),1,'card','null','null','null',1,28);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (28,20,'a111111','���','010-3333-3333',to_date('22/02/05','RR/MM/DD'),1,'card','null','null','null',1,29);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (29,9,'a111111','���','010-3333-3333',to_date('22/02/05','RR/MM/DD'),1,'card','���� ���۱� ���Ƿ�30�� 27','101ȣ','07031',4,30);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (30,20,'a111111','���','010-3333-3333',to_date('22/02/05','RR/MM/DD'),1,'card','���� ���۱� ���Ƿ�30�� 27','101ȣ','07031',4,30);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (40,20,'a111111','���','010-3333-3333',to_date('22/02/06','RR/MM/DD'),5,'card','���� ���۱� ���Ƿ�30�� 27','���','07031',4,38);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (41,24,'a111111','���','010-3333-3333',to_date('22/02/06','RR/MM/DD'),13,'card','���� ���۱� ���Ƿ�30�� 27','���','07031',4,38);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (42,25,'a111111','���','010-3333-3333',to_date('22/02/06','RR/MM/DD'),1,'card','���� ���۱� ���Ƿ�30�� 27','���','07031',4,38);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (56,25,'alfk11','������','010-3825-1118',to_date('22/02/07','RR/MM/DD'),1,'card','����Ư����ġ�� �������� ������ 14','����ʹ�','63534',2,65);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (57,25,'alfk11','������','010-3825-1118',to_date('22/02/07','RR/MM/DD'),1,'card','����Ư����ġ�� �������� ������ 14','����ʹ�','63534',2,66);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (58,25,'alfk11','������','010-3825-1118',to_date('22/02/07','RR/MM/DD'),1,'card','����Ư����ġ�� �������� ������ 14','����ʹ�','63534',2,67);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (59,25,'alfk11','������','010-1111-1118',to_date('22/02/07','RR/MM/DD'),1,'card','����Ư����ġ�� �������� ������ 14','����ʹ�','63534',2,68);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (60,25,'a111111','���','010-3333-3333',to_date('22/02/07','RR/MM/DD'),3,'card','���� ���۱� ���Ƿ�30�� 27','���','07031',2,69);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (25,9,'a111111','���','010-3333-3333',to_date('22/02/05','RR/MM/DD'),1,'card','null','null','null',1,1);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (26,20,'a111111','���','010-3333-3333',to_date('22/02/05','RR/MM/DD'),1,'card','null','null','null',1,1);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (31,24,'test_1','�׽�Ʈ','010-3825-1118',to_date('22/02/05','RR/MM/DD'),2,'card','����Ư����ġ�� �������� ������ 14','������','63534',1,31);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (32,20,'test_1','�׽�Ʈ','010-3825-1118',to_date('22/02/05','RR/MM/DD'),1,'card','����Ư����ġ�� �������� ������ 14','������','63534',1,31);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (3,12,'ab1111','�質��','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',1,3);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (10,12,'ab1111','�質��','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',1,10);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (24,24,'shTest2','��ü��','010-2341-2341',to_date('22/02/05','RR/MM/DD'),4,'account','���� ������ ������� 476','345','06120',1,1);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (34,16,'shTest2','��ü��','010-2341-2341',to_date('22/02/05','RR/MM/DD'),1,'account','���� ������ ������� 476','345','06120',3,33);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (35,14,'shTest2','��ü��','010-2341-2341',to_date('22/02/05','RR/MM/DD'),1,'account','���� ������ ������� 476','345','06120',3,33);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (37,24,'ab1111','�質��','016-2222-2222',to_date('22/02/05','RR/MM/DD'),5,'card','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',2,35);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (38,20,'ab1111','�質��','016-2222-2222',to_date('22/02/05','RR/MM/DD'),7,'deposit','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',1,36);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (46,42,'a111111','���','010-3333-3333',to_date('22/02/07','RR/MM/DD'),5,'card','���� ���۱� ���Ƿ�30�� 27','���','07031',2,41);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (1,12,'ab1111','�質��','010-3333-3333',to_date('22/02/02','RR/MM/DD'),1,'card','���� �߶��� �簡���� 326','32ȣ','02236',3,1);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (2,14,'ab1111','�質��','016-2222-2222',to_date('22/02/02','RR/MM/DD'),1,'card','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',1,2);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (12,24,'a111111','���','010-3333-3333',to_date('22/02/04','RR/MM/DD'),1,'card','null','null','null',1,12);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (13,25,'shTest','ťťť','010-2341-2341',to_date('22/02/04','RR/MM/DD'),3,'card','���� ������ ������� 298','qqq','06253',1,13);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (14,24,'shTest','ťťť','010-2341-2341',to_date('22/02/04','RR/MM/DD'),1,'card','���� ������ ������� 298','qqq','06253',1,14);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (15,12,'shTest','ťťť','010-2341-2341',to_date('22/02/04','RR/MM/DD'),1,'card','���� ������ ������� 298','qqq','06253',1,15);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (16,4,'shTest','ťťť','010-2341-2341',to_date('22/02/04','RR/MM/DD'),1,'card','���� ������ ������� 298','qqq','06253',1,16);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (17,19,'shTest','ťťť','010-2341-2341',to_date('22/02/04','RR/MM/DD'),1,'card','���� ������ ������� 298','qqq','06253',1,17);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (18,16,'shTest','ťťť','010-2341-2341',to_date('22/02/04','RR/MM/DD'),1,'card','���� ������ ������� 298','qqq','06253',3,18);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (19,18,'shTest','ťťť','010-2341-2341',to_date('22/02/04','RR/MM/DD'),6,'card','���� ������ ������� 298','qqq','06253',1,19);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (20,9,'a111111','���','010-3333-3333',to_date('22/02/04','RR/MM/DD'),1,'card','���� ���۱� ���Ƿ�30�� 27','���1ȣ','07031',1,0);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (21,20,'a111111','���','010-3333-3333',to_date('22/02/04','RR/MM/DD'),1,'card','���� ���۱� ���Ƿ�30�� 27','���1ȣ','07031',1,0);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (22,9,'a111111','���','010-3333-3333',to_date('22/02/04','RR/MM/DD'),1,'card','���� �߶��� �簡���� 326','32ȣ','02236',3,1);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (23,20,'a111111','���','010-3333-3333',to_date('22/02/04','RR/MM/DD'),1,'card','���� �߶��� �簡���� 326','32ȣ','02236',3,1);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (33,14,'a111111','���','010-3333-3333',to_date('22/02/05','RR/MM/DD'),4,'card','null','null','null',1,32);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (44,18,'a111111','���','010-3333-3333',to_date('22/02/07','RR/MM/DD'),1,'card','���� ���۱� ���Ƿ�30�� 27','���','07031',2,40);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (45,41,'a111111','���','010-3333-3333',to_date('22/02/07','RR/MM/DD'),3,'card','���� ���۱� ���Ƿ�30�� 27','���','07031',2,40);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (48,25,'a111111','���','010-3333-3333',to_date('22/02/07','RR/MM/DD'),3,'card','���� ���۱� ���Ƿ�30�� 27','���','07031',2,62);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (49,9,'a111111','���','010-3333-3333',to_date('22/02/07','RR/MM/DD'),5,'card','���� ���۱� ���Ƿ�30�� 27','���','07031',2,62);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (50,8,'a111111','���','010-3333-3333',to_date('22/02/07','RR/MM/DD'),4,'card','���� ���۱� ���Ƿ�30�� 27','���','07031',2,62);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (53,25,'alfk11','������','010-3825-1118',to_date('22/02/07','RR/MM/DD'),4,'card','����Ư����ġ�� �������� ������ 14','����ʹ�','63534',4,64);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (54,4,'alfk11','������','010-3825-1118',to_date('22/02/07','RR/MM/DD'),1,'card','����Ư����ġ�� �������� ������ 14','����ʹ�','63534',4,64);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (55,41,'alfk11','������','010-3825-1118',to_date('22/02/07','RR/MM/DD'),1,'card','����Ư����ġ�� �������� ������ 14','����ʹ�','63534',4,64);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (11,24,'ab1111','�質��','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',1,11);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (36,24,'ab1111','�質��','016-2222-2222',to_date('22/02/05','RR/MM/DD'),3,'card','��� ������ �д籸 ����Ǳ��� 477','Ǫ�Ʊ׶�','13480',3,34);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (39,24,'esdel101n','�̱Ժ�','010-2371-1829',to_date('22/02/06','RR/MM/DD'),1,'card','���� ��â�� ��ȭ�� ��̻�� 132-72','����','25357',2,37);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (43,42,'a111111','���','010-3333-3333',to_date('22/02/06','RR/MM/DD'),3,'account','���� ���۱� ���Ƿ�30�� 27','���','07031',4,39);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (47,25,'a111111','���','010-3333-3333',to_date('22/02/07','RR/MM/DD'),3,'card','���� ���۱� ���Ƿ�30�� 27','���','07031',2,61);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (51,25,'esdel101n','�̱Ժ�','010-2371-1829',to_date('22/02/07','RR/MM/DD'),1,'card','���� ��â�� ��ȭ�� ��̻�� 132-72','����','25357',4,63);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (52,20,'esdel101n','�̱Ժ�','010-2371-1829',to_date('22/02/07','RR/MM/DD'),1,'card','���� ��â�� ��ȭ�� ��̻�� 132-72','����','25357',4,63);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (61,45,'a111111','���','010-3333-3333',to_date('22/02/07','RR/MM/DD'),1,'card','���� ���۱� ���Ƿ�30�� 27','���','07031',4,70);
REM INSERTING into PERFUME.PRODUCT
SET DEFINE OFF;
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (2,'�賲��',144,10,'SOLID','qwer','�ٿ�ε�.jfif',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (3,'�賲��',12,10,'BODY','asdf','lion.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (4,'�ך�Ʈ',144,9,'HAIR','������asdfasdf','library.jfif',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (7,'��ü���1',133000,3,'SOLID','��ü���','doson_face_doson50v1_1439x12001.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (8,'����������',11111,6,'HAIR','�̾���','body_ (5)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (9,'clean&warmCotton',1233,-5,'BODY','�� ���','clean&warmCotton.jpg.crdownload',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (10,'���',144,10,'SOLID','��������','Lion.jfif',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (11,'������������',144,10,'SOLID','��������','body_ (7)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (16,'��ü�׽�Ʈ_1',234432,3312,'SOLID','��ü�׽�Ʈ_1','body_ (9)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (17,'��ü�׽�Ʈ_2',22222,13,'SOLID','��ü�׽�Ʈ_2','body_ (4)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (18,'��ü�׽�Ʈ_3',33333,12333,'SOLID','��ü�׽�Ʈ_3','body_ (8)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (19,'��ü�׽�Ʈ_4',444444,4444,'SOLID','��ü�׽�Ʈ_4','body_ (5)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (20,'��ü�׽�Ʈ_5',555555,55554,'SOLID','��ü�׽�Ʈ_5','body_ (6)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (24,'��ü�׽�Ʈ_8',8888,888,'SOLID','��ü�׽�Ʈ_8','body_ (8)2.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (25,'��ü�׽�Ʈ_7',7777,759,'SOLID','��ü�׽�Ʈ_7','body_ (7)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (45,'����ũ22',3300,122,'HAIR','��������','test.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (5,'����������',1,1,'SOLID','121','hair_ (2)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (12,'���� �ð� AM 12:59',144,10,'SOLID','asdf','Lion.jfif',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (41,'body_(1)',2000,122,'BODY','gdgdgd','body_ (1).jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (42,'body_(2)',2000,15,'BODY','ASDF','body_ (2).jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (43,'�־ȳ��͵�����',14143,3312,'SOLID','solid-(1)','L''OMBRE DANS L''EAU1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (1,'�׽�Ʈ',12,12,'SOLID','���� �׽�Ʈ','lion.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (6,'Eau Rose',69800,13,'SOLID','��ü���_1','logo.ver1.png',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (13,'�׽�Ʈ-1',131354,13,'SOLID','�׽�Ʈ-1','logo.ver1.png',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (14,'�׽�Ʈ-2',47782,1234,'SOLID','�׽�Ʈ-2','icon_up.png',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (44,'����ũ ',2000,34,'HAIR','����ũ ����Դϴ�','test.jpg',0);
REM INSERTING into PERFUME.QNA
SET DEFINE OFF;
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (60,'asd123',to_date('22/02/03','RR/MM/DD'),'3123123','12312',null,'Y',null,58,2,2,to_date('22/02/03','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (61,'asd123',to_date('22/02/03','RR/MM/DD'),'��12321','312313',null,'Y',null,58,3,3,to_date('22/02/03','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (66,'asd123',to_date('22/02/04','RR/MM/DD'),'123','123',null,'N',null,66,0,0,to_date('22/02/04','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (67,'asd123',to_date('22/02/04','RR/MM/DD'),null,null,null,'N',null,67,0,0,to_date('22/02/04','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (68,'asd123',to_date('22/02/04','RR/MM/DD'),'12321',null,null,'N',null,68,0,0,to_date('22/02/04','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (69,'asd123',to_date('22/02/04','RR/MM/DD'),null,null,null,'N',null,69,0,0,to_date('22/02/04','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (70,'asd123',to_date('22/02/04','RR/MM/DD'),'123','123',null,'N',null,70,0,0,to_date('22/02/04','RR/MM/DD'),0,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (71,'asd123',to_date('22/02/04','RR/MM/DD'),'123','123123',null,'N',null,71,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (128,'a111111',to_date('22/02/07','RR/MM/DD'),'�Ⱦ��','�ȵſ� ','���','Y',null,127,3,1,to_date('22/02/07','RR/MM/DD'),1,5);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (129,'a111111',to_date('22/02/07','RR/MM/DD'),'��','����������','��ȯ','Y',null,127,4,2,to_date('22/02/07','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (137,'test_1',to_date('22/02/07','RR/MM/DD'),'�ֿ�','�ֿ˿ֿ�','���','Y',null,137,0,0,to_date('22/02/07','RR/MM/DD'),1,14);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (138,'test_1',to_date('22/02/07','RR/MM/DD'),'�ֿ�','�ֿ�','���','Y',null,137,1,1,to_date('22/02/07','RR/MM/DD'),1,5);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (139,'alfk11',to_date('22/02/07','RR/MM/DD'),'�ֿ�2','�ֿ�2','���','N',null,137,2,2,to_date('22/02/07','RR/MM/DD'),1,4);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (142,'a111111',to_date('22/02/07','RR/MM/DD'),'�������Դϴ�','�ٲ��Ƚ��ϴ�~','��ȯ','Y',null,140,2,2,to_date('22/02/07','RR/MM/DD'),1,14);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (31,'asd123',to_date('22/02/03','RR/MM/DD'),'�ֱ���','���ع��� ��λ��� ������ �⵵�� �ϴ����� �����ϻ� �츮 ���� ���� ����ȭ ��õ�� ȭ������ ���ѻ�� �������� ���� �����ϼ�',null,'N',null,31,0,0,to_date('22/02/03','RR/MM/DD'),0,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (32,'asd123',to_date('22/02/03','RR/MM/DD'),'12312','123213213',null,'N',null,32,0,0,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (46,'asd123',to_date('22/02/03','RR/MM/DD'),'��ȯ����','��ȯ����',null,'Y',null,46,0,0,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (47,'asd123',to_date('22/02/03','RR/MM/DD'),'��','�ȵɰ� �� �ֽ��ϱ�',null,'Y',null,46,1,1,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (48,'asd123',to_date('22/02/03','RR/MM/DD'),'�׽���','123123',null,'Y',null,48,0,0,to_date('22/02/03','RR/MM/DD'),1,4);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (49,'asd123',to_date('22/02/03','RR/MM/DD'),'123213','123123123',null,'Y',null,48,1,1,to_date('22/02/03','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (50,'asd123',to_date('22/02/03','RR/MM/DD'),'12321','��������������',null,'Y',null,48,2,2,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (51,'asd123',to_date('22/02/03','RR/MM/DD'),'����','��������',null,'Y',null,48,3,3,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (52,'asd123',to_date('22/02/03','RR/MM/DD'),'����','����',null,'Y',null,48,4,4,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (53,'asd123',to_date('22/02/03','RR/MM/DD'),'����-2','����-3',null,'Y',null,48,5,5,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (54,'asd123',to_date('22/02/03','RR/MM/DD'),'312321312321','312321312312',null,'Y',null,48,6,6,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (55,'asd123',to_date('22/02/03','RR/MM/DD'),'123213','123123213',null,'Y',null,48,7,7,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (56,'asd123',to_date('22/02/03','RR/MM/DD'),'1312312','123123213',null,'Y',null,48,8,8,to_date('22/02/03','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (57,'asd123',to_date('22/02/03','RR/MM/DD'),'12321','321313',null,'N',null,48,9,9,to_date('22/02/03','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (58,'asd123',to_date('22/02/03','RR/MM/DD'),'�ƾ� ��� �׽�Ʈ','21312312',null,'Y',null,58,0,0,to_date('22/02/03','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (59,'asd123',to_date('22/02/03','RR/MM/DD'),'123123','123123',null,'Y',null,58,1,1,to_date('22/02/03','RR/MM/DD'),1,6);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (84,'asd123',to_date('22/02/04','RR/MM/DD'),'213123','123123','��ȯ','Y',null,84,0,0,to_date('22/02/04','RR/MM/DD'),1,7);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (85,'asd123',to_date('22/02/04','RR/MM/DD'),'12321','12313','���','N',null,84,1,1,to_date('22/02/04','RR/MM/DD'),1,9);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (131,'esdel101n',to_date('22/02/07','RR/MM/DD'),'�̱Ժ�1','�ۺ��� 500��~','�Ϲ� ����','Y',null,131,0,0,to_date('22/02/07','RR/MM/DD'),1,81);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (29,'asd123',to_date('22/02/02','RR/MM/DD'),'213','123',null,'N',null,29,0,0,to_date('22/02/02','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (30,'asd123',to_date('22/02/02','RR/MM/DD'),'123223213','123123',null,'N',null,30,0,0,to_date('22/02/02','RR/MM/DD'),0,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (33,'asd123',to_date('22/02/03','RR/MM/DD'),'�׽�Ʈ','�׽�Ʈ
',null,'N',null,33,0,0,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (34,'asd123',to_date('22/02/03','RR/MM/DD'),'�׽�Ʈ','�׽�Ʈ',null,'N',null,34,0,0,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (35,'asd123',to_date('22/02/03','RR/MM/DD'),'�׽�Ʈ-3','�׽�Ʈ-4 500��',null,'N',null,35,0,0,to_date('22/02/03','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (36,'asd123',to_date('22/02/03','RR/MM/DD'),'�׽�Ʈ-4','�׽�Ʈ-5',null,'N',null,36,0,0,to_date('22/02/03','RR/MM/DD'),1,10);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (37,'asd123',to_date('22/02/03','RR/MM/DD'),'�׽�Ʈ-5 ���� 500��','�׽�Ʈ-51231232131231232112312312312312321412412412412412',null,'N',null,37,0,0,to_date('22/02/03','RR/MM/DD'),1,32);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (38,'asd123',to_date('22/02/03','RR/MM/DD'),'�׽�Ʈ-5','�׽�Ʈ-6',null,'N',null,38,0,0,to_date('22/02/03','RR/MM/DD'),0,22);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (39,'asd123',to_date('22/02/03','RR/MM/DD'),'�׽�Ʈ-5','�׽�Ʈ-6',null,'N',null,39,0,0,to_date('22/02/03','RR/MM/DD'),0,35);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (44,'asd123',to_date('22/02/03','RR/MM/DD'),'����','����',null,'Y',null,42,2,2,to_date('22/02/03','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (45,'asd123',to_date('22/02/03','RR/MM/DD'),'12321','123123',null,'N',null,37,1,1,to_date('22/02/03','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (83,'asd123',to_date('22/02/04','RR/MM/DD'),'123','123','���','N',null,83,0,0,to_date('22/02/04','RR/MM/DD'),1,9);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (87,'asd123',to_date('22/02/04','RR/MM/DD'),'1231','123213','���','N',null,86,1,1,to_date('22/02/04','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (101,'esdel101n',to_date('22/02/04','RR/MM/DD'),'123','1231',null,'N',null,101,0,0,to_date('22/02/04','RR/MM/DD'),0,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (124,'a111111',to_date('22/02/05','RR/MM/DD'),'����Դϴ�','�Pȣȣ','���','N',null,122,3,2,to_date('22/02/05','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (125,'ab1111',to_date('22/02/06','RR/MM/DD'),'���� ��� �ִµ���','��� �߸� �� �� ������ ��ȯ �ȵǳ��� ����`','��ȯ','N',null,125,0,0,to_date('22/02/06','RR/MM/DD'),1,66);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (132,'esdel101n',to_date('22/02/07','RR/MM/DD'),'123123','123123123','�Ϲ� ����','Y',null,131,2,1,to_date('22/02/07','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (133,'esdel101n',to_date('22/02/07','RR/MM/DD'),'123123','123123','ȯ��','Y',null,127,1,1,to_date('22/02/07','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (134,'esdel101n',to_date('22/02/07','RR/MM/DD'),'123123213','123123','�Ϲ� ����','Y',null,131,1,1,to_date('22/02/07','RR/MM/DD'),0,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (40,'asd123',to_date('22/02/03','RR/MM/DD'),'123','123123',null,'N',null,40,0,0,to_date('22/02/03','RR/MM/DD'),1,4);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (41,'asd123',to_date('22/02/03','RR/MM/DD'),'12312312321','123213',null,'N',null,41,0,0,to_date('22/02/03','RR/MM/DD'),0,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (42,'asd123',to_date('22/02/03','RR/MM/DD'),'12321','123123���',null,'N',null,42,0,0,to_date('22/02/03','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (43,'asd123',to_date('22/02/03','RR/MM/DD'),'123','123123',null,'N',null,42,1,1,to_date('22/02/03','RR/MM/DD'),1,4);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (65,'ab1111',to_date('22/02/04','RR/MM/DD'),'���� ���ƿӴ�','���̿�',null,'N',null,58,4,4,to_date('22/02/04','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (72,'asd123',to_date('22/02/04','RR/MM/DD'),'123','123123',null,'N',null,72,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (73,'asd123',to_date('22/02/04','RR/MM/DD'),'123','1231231',null,'N',null,73,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (74,'asd123',to_date('22/02/04','RR/MM/DD'),'321321','32132',null,'N',null,74,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (75,'asd123',to_date('22/02/04','RR/MM/DD'),'12321','123',null,'N',null,75,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (76,'asd123',to_date('22/02/04','RR/MM/DD'),'21321','123213',null,'N',null,76,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (77,'asd123',to_date('22/02/04','RR/MM/DD'),'12321','21312','��ȯ','N',null,77,0,0,to_date('22/02/04','RR/MM/DD'),1,4);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (78,'asd123',to_date('22/02/04','RR/MM/DD'),'123213','123',null,'N',null,78,0,0,to_date('22/02/04','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (79,'asd123',to_date('22/02/04','RR/MM/DD'),'21321','213123',null,'N',null,79,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (80,'asd123',to_date('22/02/04','RR/MM/DD'),'`12`12','`12`12',null,'N',null,80,0,0,to_date('22/02/04','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (81,'asd123',to_date('22/02/04','RR/MM/DD'),'312312','312312313',null,'N',null,81,0,0,to_date('22/02/04','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (82,'asd123',to_date('22/02/04','RR/MM/DD'),'12312','321313','���','N',null,82,0,0,to_date('22/02/04','RR/MM/DD'),1,4);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (86,'asd123',to_date('22/02/04','RR/MM/DD'),'123213','131231312','���','Y',null,86,0,0,to_date('22/02/04','RR/MM/DD'),1,26);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (130,'a111111',to_date('22/02/07','RR/MM/DD'),'2/7 ���','����','���','N',null,127,2,1,to_date('22/02/07','RR/MM/DD'),1,7);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (135,'esdel101n',to_date('22/02/07','RR/MM/DD'),'123132','123213','�Ϲ� ����','Y',null,122,1,1,to_date('22/02/07','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (136,'esdel101n',to_date('22/02/07','RR/MM/DD'),'23123','123213','�Ϲ� ����','N',null,131,3,2,to_date('22/02/07','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (140,'ab1111',to_date('22/02/07','RR/MM/DD'),'���� ���ſ�','���� �ٲܰ�','��ȯ','Y',null,140,0,0,to_date('22/02/07','RR/MM/DD'),1,12);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (141,'ab1111',to_date('22/02/07','RR/MM/DD'),'�� �ٲ���?','������','��ȯ','Y',null,140,1,1,to_date('22/02/07','RR/MM/DD'),1,6);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (62,'a111111',to_date('22/02/03','RR/MM/DD'),'����Դϴ�','��������������',null,'N',null,62,0,0,to_date('22/02/03','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (63,'a111111',to_date('22/02/03','RR/MM/DD'),'��','��������',null,'Y',null,63,0,0,to_date('22/02/03','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (64,'asd123',to_date('22/02/03','RR/MM/DD'),'1','20',null,'Y',null,63,1,1,to_date('22/02/03','RR/MM/DD'),0,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (121,'a111111',to_date('22/02/05','RR/MM/DD'),'��','����','���','N',null,121,0,0,to_date('22/02/05','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (122,'a111111',to_date('22/02/05','RR/MM/DD'),'�𸷤�������������','��������������','�Ϲ� ����','Y',null,122,0,0,to_date('22/02/05','RR/MM/DD'),1,6);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (123,'a111111',to_date('22/02/05','RR/MM/DD'),'��','������������','���','Y',null,122,2,1,to_date('22/02/05','RR/MM/DD'),1,8);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (126,'alfk11',to_date('22/02/06','RR/MM/DD'),'��¼��','��¼��','���','N',null,126,0,0,to_date('22/02/06','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (127,'alfk11',to_date('22/02/06','RR/MM/DD'),'��� �������-','ȯ�������-','ȯ��','Y',null,127,0,0,to_date('22/02/06','RR/MM/DD'),1,311);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (143,'qwe123',to_date('22/02/07','RR/MM/DD'),'����','����','��ȯ','N',null,140,3,3,to_date('22/02/07','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (144,'esdel101n',to_date('22/02/07','RR/MM/DD'),'����� �ȿɴϴ�.','���� �����ּ���. �� ȭ������ �մϴ�.
�ڱ����� ������.','���','Y',null,144,0,0,to_date('22/02/07','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (145,'qwe123',to_date('22/02/07','RR/MM/DD'),'ȯ�� �ϼ���. ^ ^7','�Ҹ������ø� ȯ�� ��û �Ͻñ� �ٶ��ϴ�.','���','N',null,144,1,1,to_date('22/02/07','RR/MM/DD'),1,7);
REM INSERTING into PERFUME.REVIEW
SET DEFINE OFF;
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (7,'alfk11','�ȳ�','���',to_date('22/02/05','RR/MM/DD'),4,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (37,'a111111','���� ���ƿ�','����~����',to_date('22/02/06','RR/MM/DD'),25,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (51,'esdel101n','��������','���� ����',to_date('22/02/07','RR/MM/DD'),29,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (55,'esdel101n','123','123',to_date('22/02/07','RR/MM/DD'),1,null,0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (9,'test_1',null,null,to_date('22/02/05','RR/MM/DD'),4,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (11,'test_1',null,null,to_date('22/02/05','RR/MM/DD'),1,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (13,'test_1',null,null,to_date('22/02/05','RR/MM/DD'),0,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (15,'test_1',null,null,to_date('22/02/05','RR/MM/DD'),5,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (17,'test_1',null,null,to_date('22/02/05','RR/MM/DD'),2,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (19,'test_1','adsads','adsads',to_date('22/02/05','RR/MM/DD'),13,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (3,'esdel101n','�߾��� �־��','�׾�',to_date('22/02/04','RR/MM/DD'),15,null,0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (5,'esdel101n','123123123','123123123123123213',to_date('22/02/04','RR/MM/DD'),12,null,0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (35,'ab1111','��',null,to_date('22/02/05','RR/MM/DD'),30,null,0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (41,'a111111','���','���� ���ƿ�',to_date('22/02/06','RR/MM/DD'),79,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (45,'a111111','����','���� �Ǿ��',to_date('22/02/06','RR/MM/DD'),134,'body_ (1)1.jpg',1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (47,'a111111','���߿� �̹�����','���߿����ߤ���',to_date('22/02/07','RR/MM/DD'),47,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (49,'a111111','���� ���ƿ�','����',to_date('22/02/07','RR/MM/DD'),49,'test.jpg',0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (21,'esdel101n','����','����������',to_date('22/02/05','RR/MM/DD'),5,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (23,'esdel101n','�ھ˶� ����','�ھ˶� 500��',to_date('22/02/05','RR/MM/DD'),1,null,0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (25,'esdel101n','123123123',null,to_date('22/02/05','RR/MM/DD'),1,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (27,'esdel101n','123123','12312313',to_date('22/02/05','RR/MM/DD'),4,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (29,'esdel101n','123123','123123123123123123123',to_date('22/02/05','RR/MM/DD'),3,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (31,'esdel101n','`12`12','`12`12`12',to_date('22/02/05','RR/MM/DD'),73,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (33,'esdel101n','213123','123213',to_date('22/02/05','RR/MM/DD'),44,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (43,'a111111','��','���ƿ�',to_date('22/02/06','RR/MM/DD'),10,null,0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (53,'esdel101n','�������� ��ü','���� ���� ��ü 213123123',to_date('22/02/07','RR/MM/DD'),76,'ĸó.PNG',1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (39,'a111111','��','���ƿ�',to_date('22/02/06','RR/MM/DD'),2,null,0);
--------------------------------------------------------
--  DDL for Index PK_CART_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_CART_NO" ON "PERFUME"."CART" ("CNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_MEMBER_ID" ON "PERFUME"."MEMBER" ("MID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_NOTICE_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_NOTICE_NO" ON "PERFUME"."NOTICE" ("NNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ORDER_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_ORDER_NO" ON "PERFUME"."ORDER" ("ONO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PRODUCT_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_PRODUCT_NO" ON "PERFUME"."PRODUCT" ("PNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_QNA_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_QNA_NO" ON "PERFUME"."QNA" ("QNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_REVIEW_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_REVIEW_NO" ON "PERFUME"."REVIEW" ("RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "PERFUME"."CART" ADD CONSTRAINT "PK_CART_NO" PRIMARY KEY ("CNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."CART" MODIFY ("MID" NOT NULL ENABLE);
  ALTER TABLE "PERFUME"."CART" MODIFY ("PNO" NOT NULL ENABLE);
  ALTER TABLE "PERFUME"."CART" MODIFY ("CNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "PERFUME"."MEMBER" ADD CONSTRAINT "PK_MEMBER_ID" PRIMARY KEY ("MID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."MEMBER" MODIFY ("MID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "PERFUME"."NOTICE" ADD CONSTRAINT "PK_NOTICE_NO" PRIMARY KEY ("NNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."NOTICE" MODIFY ("NNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDER
--------------------------------------------------------

  ALTER TABLE "PERFUME"."ORDER" ADD CONSTRAINT "PK_ORDER_NO" PRIMARY KEY ("ONO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."ORDER" MODIFY ("MID" NOT NULL ENABLE);
  ALTER TABLE "PERFUME"."ORDER" MODIFY ("PNO" NOT NULL ENABLE);
  ALTER TABLE "PERFUME"."ORDER" MODIFY ("ONO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PERFUME"."PRODUCT" ADD CONSTRAINT "PK_PRODUCT_NO" PRIMARY KEY ("PNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."PRODUCT" MODIFY ("PNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "PERFUME"."QNA" ADD CONSTRAINT "PK_QNA_NO" PRIMARY KEY ("QNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."QNA" MODIFY ("MID" NOT NULL ENABLE);
  ALTER TABLE "PERFUME"."QNA" MODIFY ("QNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "PERFUME"."REVIEW" ADD CONSTRAINT "PK_REVIEW_NO" PRIMARY KEY ("RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."REVIEW" MODIFY ("MID" NOT NULL ENABLE);
  ALTER TABLE "PERFUME"."REVIEW" MODIFY ("RNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "PERFUME"."CART" ADD CONSTRAINT "FK_MEMBER_TO_CART_ID" FOREIGN KEY ("MID")
	  REFERENCES "PERFUME"."MEMBER" ("MID") ENABLE;
  ALTER TABLE "PERFUME"."CART" ADD CONSTRAINT "FK_PRODUCT_TO_CART_NO" FOREIGN KEY ("PNO")
	  REFERENCES "PERFUME"."PRODUCT" ("PNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER
--------------------------------------------------------

  ALTER TABLE "PERFUME"."ORDER" ADD CONSTRAINT "FK_MEMBER_TO_ORDER_ID" FOREIGN KEY ("MID")
	  REFERENCES "PERFUME"."MEMBER" ("MID") ENABLE;
  ALTER TABLE "PERFUME"."ORDER" ADD CONSTRAINT "FK_PRODUCT_TO_ORDER_NO" FOREIGN KEY ("PNO")
	  REFERENCES "PERFUME"."PRODUCT" ("PNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "PERFUME"."QNA" ADD CONSTRAINT "FK_MEMBER_TO_QNA_ID" FOREIGN KEY ("MID")
	  REFERENCES "PERFUME"."MEMBER" ("MID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "PERFUME"."REVIEW" ADD CONSTRAINT "FK_MEMBER_TO_REVIEW_ID" FOREIGN KEY ("MID")
	  REFERENCES "PERFUME"."MEMBER" ("MID") ENABLE;
