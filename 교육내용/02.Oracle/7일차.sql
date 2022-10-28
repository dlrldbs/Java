--������ ����
--����)ALTER SEQUENCE �������� {MAXVALUE|MINVALUE|INCREMENT BY} ���氪

--USER2_SEQ �������� �ִ밪�� 99�� �����ϰ� �������� 5�� ����
SELECT SEQUENCE_NAME,MAX_VALUE,MIN_VALUE,INCREMENT_BY FROM USER_SEQUENCES;
ALTER SEQUENCE USER2_SEQ MAXVALUE 99 INCREMENT BY 5; 
SELECT SEQUENCE_NAME,MAX_VALUE,MIN_VALUE,INCREMENT_BY FROM USER_SEQUENCES;

--USER2 ���̺� �� ����
SELECT USER2_SEQ.CURRVAL FROM DUAL;--�˻���� : 5
INSERT INTO USER2 VALUES(USER2_SEQ.NEXTVAL,'������','03/09/09');
SELECT * FROM USER2;
COMMIT;

--������ ����
--����)DROP SEQUENCE ��������

--USER2_SEQ ������ ����
SELECT SEQUENCE_NAME,MAX_VALUE,MIN_VALUE,INCREMENT_BY FROM USER_SEQUENCES;
DROP SEQUENCE USER2_SEQ;
SELECT SEQUENCE_NAME,MAX_VALUE,MIN_VALUE,INCREMENT_BY FROM USER_SEQUENCES;

--�ε���(INDEX) : ���̺� ����� ���� ���� ������ �˻��ϱ� ���� ����� �����ϴ� ��ü
--�÷��� �ε����� �����ϸ� �ε��� ������ �����Ͽ� �÷��� ���� �� �˻� �ӵ� ����
--���ǽĿ��� ���� ����ϴ� �÷��� �����ϸ� ���� ���� �� �����ϴ� ���� ȿ����

--����ũ �ε���(UNIQUE INDEX) : PRIMARY KEY ���������̳� UNIQUE �������ǿ� ���� �ڵ����� �����Ǵ� �ε���
--������ũ �ε���(NON-UNIQUE INDEX) : ����ڰ� �÷��� �̿��Ͽ� �������� �����ϴ� �ε���

--USER3 ���̺� ���� - ȸ����ȣ(������-PRIMARY KEY),ȸ���̸�(������),�̸���(������-UNIQUE)
--PRIMARY KEY ���������̳� UNIQUE �������ǿ� ���� ����ũ �ε��� �ڵ� ����
CREATE TABLE USER3(NO NUMBER(2) CONSTRAINT USER3_NO_PK PRIMARY KEY,NAME VARCHAR2(20)
    ,EMAIL VARCHAR2(50) CONSTRAINT USER3_EMAIL_UK UNIQUE);
    
--USER3 ���̺��� �������� Ȯ��
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE FROM USER_CONSTRAINTS WHERE TABLE_NAME='USER3';

--USER3 ���̺��� �ε��� Ȯ�� - USER_INDEXES : �ε��� ������ �����ϴ� ��ųʸ�, USER_IND_COLUMNS : �÷� �ε��� ������ �����ϴ� ��ųʸ�
--����ũ �ε����� �̸��� ���������� �̸��� ����
SELECT C.INDEX_NAME,COLUMN_NAME,UNIQUENESS FROM USER_INDEXES I JOIN USER_IND_COLUMNS C 
    ON I.INDEX_NAME=C.INDEX_NAME WHERE C.TABLE_NAME='USER3';

--�ε��� ���� - ������ũ �ε���(NON-UNIQUE INDEX)
--����)CREATE INDEX �ε����� ON ���̺��(�÷���)

--USER3 ���̺��� NAME �÷��� �̿��Ͽ� �ε��� ����
CREATE INDEX USER3_NAME_INDEX ON USER3(NAME);

--USER3 ���̺��� �ε��� Ȯ��
SELECT C.INDEX_NAME,COLUMN_NAME,UNIQUENESS FROM USER_INDEXES I JOIN USER_IND_COLUMNS C 
    ON I.INDEX_NAME=C.INDEX_NAME WHERE C.TABLE_NAME='USER3';
    
--�ε��� ���� - ������ũ �ε���(NON-UNIQUE INDEX)
--����)DROP INDEX �ε�����
--����ũ �ε����� PRIMARY ���������̳� UNIQUE ���������� �����ϸ� ���� ����

--USER3 ���̺��� EMAIL �÷��� ���� �ε��� ����
DROP INDEX USER3_EMAIL_UK;--����ũ �ε����� ������ ��� ���� �߻�

--USER3 ���̺��� EMAIL �÷��� ������ UNIQUE �������� ����
ALTER TABLE USER3 DROP CONSTRAINT USER3_EMAIL_UK;

--USER3 ���̺��� �������� �� �ε��� Ȯ��
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE FROM USER_CONSTRAINTS WHERE TABLE_NAME='USER3';
SELECT C.INDEX_NAME,COLUMN_NAME,UNIQUENESS FROM USER_INDEXES I JOIN USER_IND_COLUMNS C 
    ON I.INDEX_NAME=C.INDEX_NAME WHERE C.TABLE_NAME='USER3';

--USER3 ���̺��� NAME �÷��� ���� �ε��� ����
DROP INDEX USER3_NAME_INDEX;
SELECT C.INDEX_NAME,COLUMN_NAME,UNIQUENESS FROM USER_INDEXES I JOIN USER_IND_COLUMNS C 
    ON I.INDEX_NAME=C.INDEX_NAME WHERE C.TABLE_NAME='USER3';

--���Ǿ�(SYNONYM) : ����Ŭ ��ü�� �ٸ� �̸����� �����Ͽ� ����ϱ� ���� ��ü
--���� ���Ǿ� : Ư�� ����ڸ� ����� �� �ִ� ���Ǿ� - �Ϲ� ����ڿ� ���� ����
--���� ���Ǿ� : ��� ����ڰ� ����� �� �ִ� ���Ǿ� - �����ڿ� ���� ����

--���Ǿ� ����
--����)CREATE [PUBLIC] SYNONYM ���Ǿ� FOR ��ü��
--PUBLIC : ���� ���Ǿ �����ϱ� ���� Ű����

--���̺� ��� Ȯ�� - USER_TABLES ��ųʸ� �̿�
--USER_TABLES ��ųʸ� : SYS ������ ���� ������ �� 
--�ٸ� ������� ���̺��̳� �信 �����ϴ� ��� - ����� ��Ű���� �̿��Ͽ� ����
--����)����ڸ�.���̺�� �Ǵ� ����ڸ�.���̸�
SELECT TABLE_NAME FROM SYS.USER_TABLES;
--SYS.USER_TABLES ��ü�� ���� ���Ǿ�� USER_TABLES �����Ͽ� ����
SELECT TABLE_NAME FROM USER_TABLES;
--SYS.USER_TABLES ��ü�� ���� ���Ǿ�� TABS �����Ͽ� ����
SELECT TABLE_NAME FROM TABS;

--COMM ���̺� ���� ���� ���� ����ڸ� ��� ������ ���� ���Ǿ�� BONUS ����
--���� ���� ����ڴ� ���Ǿ ���� �ý��� ������ �����Ƿ� ���Ǿ ������ ��� ���� �߻� - �����ڿ��� ���Ǿ ���� �ý��� ���� ��û
CREATE SYNONYM BONUS FOR COMM;--����

--�ý��� ������(SYSDBA - SYS ����)�� �����Ͽ� ���� ���� �����(SCOTT)���� ���Ǿ ���� �ý��� ���� �ο�
--GRANT CREATE SYNONYM TO SCOTT;

--�ý��� �����ڿ��� ���Ǿ ���� �ý��� ������ �ο� ���� �� ���Ǿ� ���� ��� ��� ����
CREATE SYNONYM BONUS FOR COMM;
SELECT * FROM COMM;
SELECT * FROM BONUS;

--COMM ���̺� ���� ���Ǿ� Ȯ�� - USER_SYNONYMS : ���Ǿ� ���� ������ �����ϴ� ��ųʸ�
SELECT TABLE_NAME,SYNONYM_NAME,TABLE_OWNER FROM USER_SYNONYMS WHERE TABLE_NAME='COMM';

--���Ǿ� ����
--����)DROP [PUBLIC] SYNONYM ���Ǿ�

--���� ���Ǿ� BONUS ����
DROP SYNONYM BONUS;
SELECT TABLE_NAME,SYNONYM_NAME,TABLE_OWNER FROM USER_SYNONYMS WHERE TABLE_NAME='COMM';
SELECT * FROM COMM;
SELECT * FROM BONUS;--���̺��� �����Ƿ� ���� �߻�

--�����(USER) : �ý���(DBMS)�� ����� �� �ִ� ��ü - ����(ACCOUNT) : ������ ���� �����
--���� ������ �ý��� ������(SYSDBA - SYS ����)�� ����

--���� ����
--����)CREATE USER ������ IDENTIFIED BY ��ȣ

--KIM ���� ���� - ������ ���ǿ��� �۾�
--����Ŭ 12C �����̻󿡼��� ���� �����ϱ� ���� ���ǿ� ���� ȯ�漳�� ����
--ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
--CREATE USER KIM IDENTIFIED BY 1234;

--���� Ȯ�� - DBA_USERS : ����� ������ �����ϴ� ��ųʸ�
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';

--������ ��й�ȣ ���� - ������ ��й�ȣ�� �⺻������ 180�� ��ȿ�Ⱓ���� ����
--����)ALTER USER ������ IDENTIFIED BY ��ȣ

--KIM ������ ��й�ȣ ���� - ������ ���ǿ��� �۾�
--ALTER USER KIM IDENTIFIED BY 5678;

--���� ���� ���� - OPEN(���� Ȱ��ȭ - ���� ����), LOCK(���� ��Ȱ��ȭ - ���� �Ұ���)
--����Ŭ ���ӽ� ������ ��й�ȣ�� 5�� Ʋ���� ������ ���°� �ڵ����� ��Ȱ��ȭ(LOCK) ���·� ����Ǿ� ���� �Ұ���
--����)ALTER USER ������ ACCOUNT {LOCK|UNLOCK}

--KIM ������ ��Ȱ��ȭ ���·� ���� - ������ ���ǿ��� �۾�
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';
--ALTER USER KIM ACCOUNT LOCK;
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';

--KIM ������ Ȱ��ȭ ���·� ���� - ������ ���ǿ��� �۾�
--ALTER USER KIM ACCOUNT UNLOCK;
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';

--������ �⺻ ���̺����̽� ����
--���̺����̽�(TABLESPACE) : ����Ÿ���̽� ��ü(���̺�,��,������,�ε��� ��)�� ����Ǵ� ����
--����Ŭ���� �⺻������ SYSTEM ���̺����̽��� USERS ���̺����̽� ����
--����)ALTER USER ������ DEFAULT TABLESPACE ���̺����̽���

--KIM ������ �⺻ ���̺����̽��� USERS�� ���� - ������ ���ǿ��� �۾�
--ALTER USER KIM DEFAULT TABLESPACE USERS;
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';

--������ ���̺����̽��� ���� ������ ����ũ�� ���� - �뷮 ����
--����)ALTER USER ������ QUITA ����ũ�� ON ���̺����̽���

--KIM ������ ������ ����ũ�⸦ ���������� ���� - ������ ���ǿ��� �۾�
--ALTER USER KIM QUOTA UNLIMITED ON USERS;
--����뷮 Ȯ�� - DBA_TS_QUOTAS : ���̺����̽��� ������ ��������� ���� ���� ������ �����ϴ� ��ųʸ�
SELECT TABLESPACE_NAME,USERNAME,MAX_BYTES FROM DBA_TS_QUOTAS;

--KIM ������ ������ ����ũ�⸦ 20MBYTE�� ���� - ������ ���ǿ��� �۾�
ALTER USER KIM QUOTA 20M ON USERS;
SELECT TABLESPACE_NAME,USERNAME,MAX_BYTES FROM DBA_TS_QUOTAS;

--���� ����
--����)DROP USER ������

--KIM ���� ���� - ������ ���ǿ��� �۾�
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';
--DROP USER KIM;
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';