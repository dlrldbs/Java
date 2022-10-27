--���̺� �Ӽ� ����
--����)ALTER TABLE ���̺�� ����ɼ�
--����ɼǿ� ���� ���̺� �Ӽ��� ���� �߰�,����,���� �� �������ǿ� ���� �߰�,���� ����

--USER1 ���̺� ���� - ȸ����ȣ(������),ȸ���̸�(������),��ȭ��ȣ(������)
CREATE TABLE USER1(NO NUMBER(4),NAME VARCHAR2(20),PHONE VARCHAR2(15));
DESC USER1;

--USER1 ���̺� �� ����
INSERT INTO USER1 VALUES(1000,'ȫ�浿','010-1234-5678');
SELECT * FROM USER1;
COMMIT;

--���̺� �Ӽ� �߰� - �÷� �⺻�� �� �÷� ������ �������� ���� ����
--����)ALTER TABLE ���̺�� ADD(�÷��� �ڷ���[(ũ��)] [DEFAULT �⺻��] [��������]);

--USER1 ���̺� �ּ�(������) �Ӽ� �߰�
--���̺� ���� ����Ǿ� �־ ���̺� �Ӽ� �߰� ���� - ���� �������� �߰��� �Ӽ����� �÷� �⺻���� �ڵ� ����
ALTER TABLE USER1 ADD(ADDRESS VARCHAR2(100));
DESC USER1;
SELECT * FROM USER1;

--USER1 ���̺��� �������� ADDRESS �÷��� ����
UPDATE USER1 SET ADDRESS='����� ������' WHERE NO=1000;
SELECT * FROM USER1;
COMMIT;

--���̺��� �÷� �ڷ����� ũ�� ���� - �÷� �⺻�� �� �÷� ������ �������� ���� ����
--����)ALTER TABLE ���̺�� MODIFY(�÷��� �ڷ���[(ũ��)] [DEFAULT �⺻��] [��������])

--USER1 ���̺� �ʱ�ȭ
TRUNCATE TABLE USER1;
SELECT * FROM USER1;

--USER1 ���̺��� NO �÷��� �ڷ���(������)�� ���������� ����
DESC USER1;
ALTER TABLE USER1 MODIFY(NO VARCHAR2(4));
DESC USER1;

--USER1 ���̺� �� ����
INSERT INTO USER1 VALUES('1000','ȫ�浿','010-1234-5678','����� ������');
SELECT * FROM USER1;
COMMIT;

--USER1 ���̺��� NO �÷��� �ڷ���(������)�� ���������� ����
--���� �÷��� ���� ����Ǿ� �ִ� ��� �÷� �ڷ��� �����ϸ� ���� �߻�
ALTER TABLE USER1 MODIFY(NO NUMBER(4));--����

--USER1 ���̺��� NAME �÷� ũ��(20BYTE)�� 10BYTE�� ����
--���� �÷��� ���� ����Ǿ� �ִ� ��� ����� �÷������� ������ �÷��� ũ�Ⱑ ū ��� �÷� ũ�� ���� ����
ALTER TABLE USER1 MODIFY(NAME VARCHAR2(10));
DESC USER1;

--USER1 ���̺��� NAME �÷� ũ��(10BYTE)�� 5BYTE�� ����
--���� �÷��� ���� ����Ǿ� �ִ� ��� ����� �÷������� ������ �÷��� ũ�Ⱑ ���� ��� ���� �߻�
ALTER TABLE USER1 MODIFY(NAME VARCHAR2(5));--����

--���̺��� �÷��� ����
--����)ALTER TABLE ���̺�� RENAME COLUMN �����÷��� TO �����÷���

--USER1 ���̺��� ADDRESS �÷����� ADDR �÷������� ����
ALTER TABLE USER1 RENAME COLUMN ADDRESS TO ADDR;
DESC USER1;

--���̺� �Ӽ� ���� - ���̺� �÷����� ���� ����
--����)ALTER TABLE ���̺�� DROP COLUMN �÷���

--USER1 ���̺��� PHONE �÷� ����
ALTER TABLE USER1 DROP COLUMN PHONE;
DESC USER1;
SELECT * FROM USER1;

--�������� �߰� - ���̺� �Ӽ� �߰�(ADD) �� ���̺� �Ӽ� ����(MODIFY)�� �÷� ������ �������� �߰� ����
--USER1 ���̺��� NAME �÷��� NOT NULL �������� �߰�
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE FROM USER_CONSTRAINTS WHERE TABLE_NAME='USER1';
ALTER TABLE USER1 MODIFY(NAME VARCHAR2(10) CONSTRAINT USER1_NAME_NN NOT NULL);
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE FROM USER_CONSTRAINTS WHERE TABLE_NAME='USER1';

--�������� �߰� - ���̺� ������ ���������� ADD �ɼ��� ����Ͽ� �߰� ����
--����)ALTER TABLE ���̺�� ADD [CONSTRAINT �������Ǹ�] ��������
--USER1 ���̺��� NO �÷��� PRIMARY KEY �������� �߰�
ALTER TABLE USER1 ADD CONSTRAINT USER1_NO_PK PRIMARY KEY(NO);
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE FROM USER_CONSTRAINTS WHERE TABLE_NAME='USER1';

--�������� ���� - DROP �ɼ��� ����Ͽ� �������� ���� ����
--����)ALTER TABLE ���̺�� DROP {PRIMARY KEY|CONSTRAINT �������Ǹ�} [CASCADE]

--USER1 ���̺��� NAME �÷��� ������ NOT NULL �������� ����
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE FROM USER_CONSTRAINTS WHERE TABLE_NAME='USER1';
ALTER TABLE USER1 DROP CONSTRAINT USER1_NAME_NN;
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE FROM USER_CONSTRAINTS WHERE TABLE_NAME='USER1';

--USER1 ���̺��� NO �÷��� ������ PRIMARY KEY �������� ����
ALTER TABLE USER1 DROP PRIMARY KEY;--���������� �̸��� �̿��Ͽ� ���� ����
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE FROM USER_CONSTRAINTS WHERE TABLE_NAME='USER1';

--BUSEO ���̺� ���� - �μ���ȣ(������-PRIMARY KEY),�μ��̸�(������) : �θ� ���̺�
CREATE TABLE BUSEO(BNO NUMBER(2) CONSTRAINT BUSEO_BNO_PK PRIMARY KEY,BNAME VARCHAR2(20));

--BUSEO ���̺� �� ����
INSERT INTO BUSEO VALUES(10,'�ѹ���');
INSERT INTO BUSEO VALUES(20,'������');
SELECT * FROM BUSEO;
COMMIT;

--SAWON ���̺� - �����ȣ(������-PRIMARY KEY),����̸�(������),�μ���ȣ(������-FOREIGN KEY:BUSEO ���̺��� BNO �÷� ����) : �ڽ� ���̺�
CREATE TABLE SAWON(SNO NUMBER(4) CONSTRAINT SAWON_SNO_PK PRIMARY KEY,SNAME VARCHAR2(20),BNO NUMBER(2)
    ,CONSTRAINT SAWON_BNO_FK FOREIGN KEY(BNO) REFERENCES BUSEO(BNO)); 
    
--SAWON ���̺� �� ����
INSERT INTO SAWON VALUES(1000,'ȫ�浿',10);
INSERT INTO SAWON VALUES(2000,'�Ӳ���',20);
SELECT * FROM SAWON;
COMMIT;

--SAWON ���̺�� BUSEO ���̺��� �������� Ȯ��
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE,R_CONSTRAINT_NAME FROM USER_CONSTRAINTS WHERE TABLE_NAME IN('BUSEO','SAWON');

--FOREIGN KEY �������ǿ� ���� �θ� ���̺��� ���� �÷��� ����Ǿ� ���� ���� ���� �����Ͽ� ������ ��� ���� �߻�
INSERT INTO SAWON VALUES(3000,'����ġ',30);--����

--���������� ��Ȱ��ȭ - �÷��� ������ ���������� �Ͻ������� �����ϴ� ���
--����)ALTER TABLE ���̺�� DISABLE {PRIMARY KEY|CONSTRAINT �������Ǹ�} [CASCADE]

--SAWON ���̺��� BNO �÷��� ������ FOREIGN KEY �������� ��Ȱ��ȭ ó��
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE,STATUS FROM USER_CONSTRAINTS WHERE TABLE_NAME='SAWON';
ALTER TABLE SAWON DISABLE CONSTRAINT SAWON_BNO_FK;
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE,STATUS FROM USER_CONSTRAINTS WHERE TABLE_NAME='SAWON';

--SAWON ���̺� �� ���� - FOREIGN KEY ���������� ��Ȱ��ȭ ó�� �Ǿ����� ���������� �����ϴ� ���� �����ص� ���� �̹߻�
INSERT INTO SAWON VALUES(3000,'����ġ',30);
SELECT * FROM SAWON;
COMMIT;

--���������� Ȱ��ȭ - ��Ȱ��ȭ ó���� ���������� �ٽ� ���۵ǵ��� �����ϴ� ���
--����)ALTER TABLE ���̺�� ENABLE {PRIMARY KEY|CONSTRAINT �������Ǹ�}

--SAWON ���̺��� BNO �÷��� ������ FOREIGN KEY �������� Ȱ��ȭ ó��
--Ȱ��ȭ ó���� �������ǿ� ���������� �����ϴ� �÷����� ����Ǿ� �ִ� ��� Ȱ��ȭ ó�� �Ұ���
ALTER TABLE SAWON ENABLE CONSTRAINT SAWON_BNO_FK;--����

--���������� �����ϴ� �÷����� �����ϰų� �÷����� ����� ���� �����ؾ߸� �������� Ȱ��ȭ ����
SELECT * FROM SAWON;
DELETE FROM SAWON WHERE BNO=30;
SELECT * FROM SAWON;
COMMIT;
ALTER TABLE SAWON ENABLE CONSTRAINT SAWON_BNO_FK;
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE,STATUS FROM USER_CONSTRAINTS WHERE TABLE_NAME='SAWON';

--BUSEO ���̺��� BNO �÷��� ������ PRIMARY KEY �������� ��Ȱ��ȭ ó��
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE,STATUS FROM USER_CONSTRAINTS WHERE TABLE_NAME='BUSEO';
--FOREIGN KEY �������ǿ� ���� �����Ǵ� �θ� ���̺��� PRIMARY KEY ���������� ��Ȱ��ȭ ó�� �Ұ���
ALTER TABLE BUSEO DISABLE PRIMARY KEY;--����

--CASCADE Ű���带 ����Ͽ� �θ� ���̺��� PRIMARY KEY ���������� ��Ȱ��ȭ ó���ϸ� �ڽ� ���̺��� ������ FOREIGN KEY �������ǵ� 
--�ڵ����� ��Ȱ��ȭ ó�� ����
ALTER TABLE BUSEO DISABLE PRIMARY KEY CASCADE;
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE,STATUS FROM USER_CONSTRAINTS WHERE TABLE_NAME IN ('BUSEO','SAWON');

--�θ� ���̺��� PRIMARY KEY ���������� Ȱ��ȭ ó���� �� �ڽ� ���̺��� FOREIGN KEY �������� Ȱ��ȭ ó�� ����
ALTER TABLE BUSEO ENABLE PRIMARY KEY;
ALTER TABLE SAWON ENABLE CONSTRAINT SAWON_BNO_FK;
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE,STATUS FROM USER_CONSTRAINTS WHERE TABLE_NAME IN ('BUSEO','SAWON');

--BUSEO ���̺��� BNO �÷��� ������ PRIMARY KEY �������� ����
--FOREIGN KEY �������ǿ� ���� �����Ǵ� �θ� ���̺��� PRIMARY KEY ���������� ���� �Ұ���
ALTER TABLE BUSEO DROP PRIMARY KEY;--����

--CASCADE Ű���带 ����Ͽ� �θ� ���̺��� PRIMARY KEY ���������� �����ϸ� �ڽ� ���̺��� ������ FOREIGN KEY �������ǵ� �ڵ����� ���� ó�� ����
ALTER TABLE BUSEO DROP PRIMARY KEY CASCADE;
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE,STATUS FROM USER_CONSTRAINTS WHERE TABLE_NAME IN ('BUSEO','SAWON');