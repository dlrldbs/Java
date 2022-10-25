--���� ������(SET ������) : �� ���� SELECT ��ɿ� ���� �˻������ �̿��Ͽ� ���� ������� �����ϴ� ������
--������(UNION),������(INTERSECT),������(MINUS)

--SUPER_HERO ���̺� ���� - �Ӽ� : �̸�(������)
CREATE TABLE SUPER_HERO(NAME VARCHAR2(20) PRIMARY KEY);

--SUPER_HERO ���̺� �� ����
INSERT INTO SUPER_HERO VALUES('���۸�');
INSERT INTO SUPER_HERO VALUES('���̾��');
INSERT INTO SUPER_HERO VALUES('��Ʈ��');
INSERT INTO SUPER_HERO VALUES('��Ʈ��');
INSERT INTO SUPER_HERO VALUES('�����̴���');
SELECT * FROM SUPER_HERO;
COMMIT;

--MARVEL_HERO ���̺� ���� - �Ӽ� : �̸�(������),���(������)
CREATE TABLE MARVEL_HERO(NAME VARCHAR2(20) PRIMARY KEY,GRADE NUMBER(1));

--MARVEL_HERO ���̺� �� ����
INSERT INTO MARVEL_HERO VALUES('���̾��',3);
INSERT INTO MARVEL_HERO VALUES('��ũ',1);
INSERT INTO MARVEL_HERO VALUES('�����̴���',4);
INSERT INTO MARVEL_HERO VALUES('�丣',2);
INSERT INTO MARVEL_HERO VALUES('��Ʈ��',5);
SELECT * FROM MARVEL_HERO;
COMMIT;

--UNION : �� ���� SELECT ������� �˻��� ���� ���� ����� �����ϴ� Ű���� - �ߺ��� ����
--����)SELECT �˻����,... FROM ���̺�� UNION SELECT �˻����,... FROM ���̺��
--�� ���� SELECT ����� �˻������ �ڷ����� ������ �ݵ�� ��ġ�ϵ��� �˻�
SELECT NAME FROM SUPER_HERO UNION SELECT NAME FROM MARVEL_HERO;

--UNION ALL : �� ���� SELECT ������� �˻��� ���� ���� ����� �����ϴ� Ű���� - �ߺ��� ����
--����)SELECT �˻����,... FROM ���̺�� UNION ALL SELECT �˻����,... FROM ���̺��
SELECT NAME FROM SUPER_HERO UNION ALL SELECT NAME FROM MARVEL_HERO;

--INTERSECT : �� ���� SELECT ������� �˻��� �࿡�� �ߺ��� ����� �����ϴ� Ű����
--����)SELECT �˻����,... FROM ���̺�� INTERSECT SELECT �˻����,... FROM ���̺��
SELECT NAME FROM SUPER_HERO INTERSECT SELECT NAME FROM MARVEL_HERO;

--MINUS : ù��° SELECT ������� �˻��� �࿡�� �ι�° SELECT ����� �˻����� ������ ����� �����ϴ� Ű����
--����)SELECT �˻����,... FROM ���̺�� MINUS SELECT �˻����,... FROM ���̺��
SELECT NAME FROM SUPER_HERO MINUS SELECT NAME FROM MARVEL_HERO;

--���� ������ ���� �ΰ��� SELECT ��ɿ� ���� �˻������ �ڷ��� �Ǵ� ������ ���� �ٸ� ��� ���� �߻�
SELECT NAME FROM SUPER_HERO UNION SELECT GRADE FROM MARVEL_HERO;--���� : �˻������ �ڷ��� ����ġ
SELECT NAME FROM SUPER_HERO UNION SELECT NAME,GRADE FROM MARVEL_HERO;--���� : �˻������ ���� ����ġ

--���� ������ ���� �ΰ��� SELECT ��ɿ� ���� �˻������ �ڷ����� �ٸ� ��� ��ȯ�Լ��� ����Ͽ� �ڷ����� ��ġ���� ���� ó��
SELECT NAME FROM SUPER_HERO UNION SELECT TO_CHAR(GRADE,'0') FROM MARVEL_HERO;

--���� ������ ���� �ΰ��� SELECT ��ɿ� ���� �˻������ ������ �ٸ� ��� ������ �ڷ����� ���ǰ� �Ǵ� NULL�� ����Ͽ� ���� ó��
SELECT NAME,0 FROM SUPER_HERO UNION SELECT NAME,GRADE FROM MARVEL_HERO;
SELECT NAME,NULL FROM SUPER_HERO UNION SELECT NAME,GRADE FROM MARVEL_HERO;

--DML(DATA MANIPULATION LANGUAGE) : ����Ÿ ���۾�
--���̺��� �࿡ ���� ����,����,���� ����� �����ϴ� SQL ��� 
--DML ��� ���� �� COMMIT ���(DML ����� ����) �Ǵ� ROLLBACK ���(DML ����� ���)�� �����ϴ� ���� ����

--INSERT : ���̺� ���� �����ϴ� ���
--����)INSERT INTO ���̺�� VALUES(�÷���,�÷���,...)
--���̺� ���Ե� ���� �÷����� ���̺� �Ӽ��� �°� ���ʴ�� �����Ͽ� ���޵ǵ��� �ۼ�
--���̺��� �Ӽ� ������� �ڷ����� �´� �÷����� �������� ���ʴ�� �����Ͽ� ����

--���̺� �Ӽ�(�÷��� �ڷ���) Ȯ��
--����)DESC ���̺��
DESC DEPT;

--DEPT ���̺� ���ο� ��(�μ�����) ����
INSERT INTO DEPT VALUES(50,'ȸ���','�����');
SELECT * FROM DEPT;
COMMIT;

--���������� ���޵� �÷����� ������ ���̺��� �÷� ������ ���� ���� ��� ���� �߻�
INSERT INTO DEPT VALUES(60,'�ѹ���');--���ް��� ������� �ʾ� ���� �߻�
INSERT INTO DEPT VALUES(60,'�ѹ���','��õ��','031-1234-5678');--���ް��� �ʹ� ���� ���� �߻�

--���������� ���޵� �÷����� ���̺��� �÷� �ڷ����� ���� �ʰų� �ڷ����� ũ�⺸�� ū ��� ���� �߻�
INSERT INTO DEPT VALUES('����','�ѹ���','��õ��');--�÷��� �ڷ����� ���� ���� ���� �����Ͽ� ���� �߻�
INSERT INTO DEPT VALUES(60,'�ѹ���','��õ�� ���̱�');--�÷� �ڷ����� ũ�⺸�� ū ���� �����Ͽ� ���� �߻�

--���̺��� �÷��� �ο��� ���������� �����ϴ� ���� ���޵� ��� ���� �߻�
--PK(PRIMARY KEY) �������� : ���̺� ����� �������� �÷����� �ߺ��� ���� ����ǵ��� �����ϴ� ��������
--DEPT ���̺��� DEPTNO �÷��� PK �������� ����
SELECT DISTINCT DEPTNO FROM DEPT;--�˻���� : 10,20,30,40,50
INSERT INTO DEPT VALUES(50,'�ѹ���','��õ��');--PK ���������� ������ ���� �����Ͽ� ���� �߻�
--PK ���������� �ο��� �÷����� NOT NULL ���������� �ڵ����� �����Ǿ� NULL ���� �Ұ���
INSERT INTO DEPT VALUES(NULL,'�ѹ���','��õ��');

--���̺��� �Ӽ��� �÷��� ���������� �����ϴ� �ʴ� ���� �����ؾ߸� �� ���� ���� - ����Ÿ ���Ἲ ����
--����Ÿ ���Ἲ : ���̺� �߸��� ���� ������� �ʵ��� �Ͽ� �������� ����� �˻�
INSERT INTO DEPT VALUES(60,'�ѹ���','��õ��');
SELECT * FROM DEPT;
COMMIT;

--���̺� �� ���Խ� �÷��� ���� �����ϰ� ���� ���� ��� NULL �����Ͽ� ���� ó��
INSERT INTO DEPT VALUES(70,'������',NULL);--����� NULL ���
SELECT * FROM DEPT;
COMMIT;

--Ư�� ���̺� �÷��� ���� �����Ͽ� �� ���� ����
--����)INSERT INTO ���̺��(�÷���,�÷���,...) VALUES(�÷���,�÷���,...)
--���̺� ������ �÷� ������� ���� �����Ͽ� �� ����
INSERT INTO DEPT(LOC,DEPTNO,DNAME) VALUES('������',80,'�����');
SELECT * FROM DEPT;
COMMIT;

--���̺��� �÷��� �����Ǹ� ������ �÷����� �÷� �⺻���� �ڵ����� ���޵Ǿ� ���� ó��
--���̺� ���� �Ǵ� ���̺� ���� ����� �÷� �⺻��(COLUMN DEFAULT VALUE) ���� ����
--�÷� �⺻���� �̼����� NULL�� �⺻������ �ڵ� ����
INSERT INTO DEPT(DEPTNO,DNAME) VALUES(90,'�λ��');--LOC �÷� ���� : NULL ���޵Ǿ� ���� - ������ NULL ���
SELECT * FROM DEPT;
COMMIT;

--��¥�� �÷����� ��¥�� ��� SYSDATE Ű���带 ����Ͽ� ���� ���Ͽ� ���� ó��
DESC EMP;
INSERT INTO EMP VALUES(9000,'KIM','MANAGER',7298,'00/12/10',3500,1000,40);
SELECT * FROM EMP;
INSERT INTO EMP VALUES(9001,'LEE','ANALYST',9000,SYSDATE,2000,NULL,40);
SELECT * FROM EMP;
COMMIT;

--INSERT ��ɿ� ��������(SUBQUERY)�� ����Ͽ� �� ���� ����
--����)INSERT INTO ���̺�� SELECT �˻����,... FROM ���̺�� [WHERE ���ǽ�]
--���������� �˻������ �̿��Ͽ� ���̺� �� ���� - �ٸ� ���̺��� ���� �˻��Ͽ� ���� ���̺� �� ���� : ���̺� �� ����
--���� ���Ե� ���̺��� �Ӽ��� ���������� �˻���� ���� �Ӽ�(�÷����� ������ �˻������ ����,�ڷ���,ũ��)�� ����

--BOUNS ���̺��� �Ӽ� Ȯ�� �� �� �˻�
DESC BONUS;
SELECT * FROM BONUS;

--EMP ���̺��� �������� �����ϴ� ����� �˻��Ͽ� BONUS ���̺� ���� ó��
INSERT INTO BONUS SELECT ENAME,JOB,SAL,COMM FROM EMP WHERE COMM IS NOT NULL;
SELECT * FROM BONUS;
COMMIT;

--UPDATE : ���̺� ����� ���� �÷����� �����ϴ� ���
--����)UPDATE ���̺�� SET �÷���=���氪,�÷���=���氪,... [WHERE ���ǽ�]
--WHERE�� ���ǽ��� ���� �ุ �˻��Ͽ� �÷��� ���� - WHERE�� ������ ��� ���̺� ����� ��� ���� �÷����� �����ϰ� ����
--WHERE���� ���Ǵ� ���ǽ��� �÷��� PK ���������� �ο��� �÷��� ����ϴ� ���� ���� - �������� �˻��Ͽ� �÷��� ����
--����Ÿ ���Ἲ�� ������ �� �����Ƿ� PK ���������� �ο��� �÷����� �������� �ʴ� ���� ����

--DEPT ���̺��� �μ���ȣ�� 50�� �μ����� �˻�
SELECT * FROM DEPT WHERE DEPTNO=50;--�μ��̸� : ȸ���, �μ���ġ : �����

--DEPT ���̺��� �μ���ȣ�� 50�� �μ��� �μ��̸��� �渮�η� �����ϰ� �μ���ġ�� ��õ�÷� ����
UPDATE DEPT SET DNAME='�渮��',LOC='��õ��' WHERE DEPTNO=50;
SELECT * FROM DEPT WHERE DEPTNO=50;--�μ��̸� : �渮��, �μ���ġ : ��õ��
COMMIT;

--�÷��� ���氪�� �÷��� �ڷ���,ũ��,���������� �´� ��쿡�� ���� ����
UPDATE DEPT SET LOC='��õ�� ���̱�' WHERE DEPTNO=50;--���氪�� ũ�Ⱑ LOC �÷��� ũ�⺸�� Ŀ�� ���� �߻�

--UPDATE ��ɿ��� ���������� ��� ���� : ���氪 �Ǵ� ���ǽ��� �񱳰� ��� �������� ���
--DEPT ���̺��� �μ��̸��� �������� �μ���ġ(NULL)�� �ѹ����� �μ���ġ(��õ��)�� ������ ����
SELECT * FROM DEPT;
UPDATE DEPT SET LOC=(SELECT LOC FROM DEPT WHERE DNAME='�ѹ���') WHERE DNAME='������';
SELECT * FROM DEPT;
COMMIT;

--BONUS ���̺��� ����̸��� KIM�� ������� �������� ���� ����� �������� 100 �����ǵ��� ����
SELECT * FROM BONUS;
UPDATE BONUS SET COMM=COMM+100 WHERE COMM<(SELECT COMM FROM BONUS WHERE ENAME='KIM');
SELECT * FROM BONUS;
COMMIT;