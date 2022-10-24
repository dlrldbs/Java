--�񵿵����(NON-EQUI JOIN) : �ΰ��̻��� ���̺��� �������ǿ� = �����ڰ� �ƴ� �����ڸ� ����Ͽ� ���� ���� �����Ͽ� �˻�

--EMP ���̺� ����� ��� ����� �����ȣ,����̸�,�޿� �˻�
SELECT EMPNO,ENAME,SAL FROM EMP;

--SALGRADE ���̺� ����� ��� �޿������ �޿���޹�ȣ,�ּұ޿�,�ִ�޿� �˻�
SELECT GRADE,LOSAL,HISAL FROM SALGRADE;

--EMP ���̺�� SALGRADE ���̺��� ��� ����� �����ȣ,����̸�,�޿�,�޿���޹�ȣ �˻�
--�������� : ����� �޿�(SAL)�� �޿������ �ּұ޿�(LOSAL)���� �ִ�޿�(HISAL) ������ ���Ե� ��� ���� �����Ͽ� �˻�
SELECT EMPNO,ENAME,SAL,GRADE FROM EMP,SALGRADE WHERE SAL BETWEEN LOSAL AND HISAL;

--�ܺΰ���(OUTER JOIN) : ���������� ���� �ุ �����ϴ� ���� �ƴ϶� ���������� ���� �ʴ� �൵ NULL�� �����Ͽ� �˻�
--�������ǽ��� ���� ���̺� (+)�� ����ϸ� ���������� ���� �ʴ� ���� NULL�� �����Ͽ� �˻�

--EMP ���̺� ����� ��� ����� �μ���ȣ�� �ߺ����� ���� ������ �÷��� �˻�
SELECT DISTINCT DEPTNO FROM EMP;--�˻���� : 10,20,30

--DEPT ���̺� ����� ��� �μ��� �μ���ȣ �˻�
SELECT DEPTNO FROM DEPT;--�˻���� : 10,20,30,40

--EMP ���̺�� DEPT ���̺� ����� ��� ����� �����ȣ,����̸�,�޿�,�μ��̸�,�μ���ġ �˻�
--�������� : EMP ���̺��� �μ���ȣ(DETPNO)�� DEPT ���̺��� �μ���ȣ(DETPNO)�� ���� ���� �����Ͽ� �˻� - �������
--40�� �μ��� �ٹ��ϴ� ����� �����Ƿ� 40�� �μ��� ���� �μ��̸��� �μ���ġ �̰˻�
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO;

--����� ���� �μ������� �˻��ϱ� ���� �˻����ǽĿ��� EMP ���̺��� �������ǿ� (+)�� �ٿ� EMP ���̺� ���յǴ� ���� ���� ���
--�÷��� ��� NULL�� ���յǾ� �˻� - �ܺΰ���
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP,DEPT WHERE EMP.DEPTNO(+)=DEPT.DEPTNO;

--�ڱ����(SELF JOIN) : �ϳ��� ���̺��� ���� �ٸ� ��Ī�� �ο��Ͽ� �ٸ� ���̺�� ������ ���� �����Ͽ� �˻�
--�˻���� �ݵ�� ���̺� ��Ī���� ���̺��� �����Ͽ� �÷��� �˻�

--EMP ���̺� ����� ��� ����� �����ȣ,����̸�,�����ڹ�ȣ(�����ȣ) �˻�
SELECT EMPNO,ENAME,MGR FROM EMP;

--EMP ���̺� ����� ��� ����� �����ȣ,����̸�,�����ڹ�ȣ(�����ȣ),�������̸�(����̸�) �˻�
--�������� : EMP ���̺�(��Ī:WORKER)�� �����ڹ�ȣ(MGR)�� EMP ���̺�(��Ī:MANAGER)�� �����ȣ(EMPNO)�� ���� ���� �����Ͽ� �˻�
--��������̹Ƿ� EMP ���̺��� �����ڹ�ȣ(MGR)�� NULL�� ����� ����� ���������� ���� �����Ƿ� ���� ���յ��� �ʾ� �̰˻�
SELECT WORKER.EMPNO,WORKER.ENAME,WORKER.MGR,MANAGER.ENAME 
    FROM EMP WORKER,EMP MANAGER WHERE WORKER.MGR=MANAGER.EMPNO;

--EMP ���̺��� �����ڹ�ȣ(MGR)�� NULL�� ����� ����� �˻��ϱ� ���� �ܺΰ���(OUTER JOIN)�� ����Ͽ� �˻�
SELECT WORKER.EMPNO,WORKER.ENAME,WORKER.MGR,MANAGER.ENAME 
    FROM EMP WORKER,EMP MANAGER WHERE WORKER.MGR=MANAGER.EMPNO(+);
    
--EMP ���̺�� DEPT ���̺��� SALES �μ��� �ٹ��ϴ� ����� �����ȣ,����̸�,�޿�,�μ��̸�,�μ���ġ �˻�
--�������� : EMP ���̺��� �μ���ȣ(DETPNO)�� DEPT ���̺��� �μ���ȣ(DETPNO)�� ���� ���� �����Ͽ� �˻� 
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND DNAME='SALES';

--������ ���̺� ������ ���̺��� �������ǰ� ���� �˻������� WHERE���� ���� ����ϹǷ� ���������� ������ ����
--1999�⿡ ä�õ� ǥ�� SQL(SQL3)������ ���̺��� �������ǰ� ���� �˻����� �����Ͽ� ���ǹǷ� �پ��� ���̺� ���չ�� ����

--CROSS JOIN : ���� ���̺��� ��� ���� ���� �����Ͽ� �˻� - �������� ����
--����)SELECT �˻����,... FROM ���̺��1 CROSS JOIN ���̺��2

--EMP ���̺�� DEPT ���̺��� ��� ����� �����ȣ,����̸�,�޿�,�μ��̸�,�μ���ġ �˻�
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP CROSS JOIN DEPT;

--NATURAL JOIN : ���� ���̺� ���� �̸��� �÷��� �ϳ��� �ִ� ��� �÷��� ����� �÷����� ���� ���� ���� �����Ͽ� �˻�
--����)SELECT �˻����,... FROM ���̺��1 NATURAL JOIN ���̺��2

--EMP ���̺�� DEPT ���̺��� SALES �μ��� �ٹ��ϴ� ����� �����ȣ,����̸�,�޿�,�μ��̸�,�μ���ġ �˻�
--�������� : EMP ���̺��� �μ���ȣ(DETPNO)�� DEPT ���̺��� �μ���ȣ(DETPNO)�� ���� ���� �����Ͽ� �˻� 
--NATURAL JOIN�� ����� ��� ���������� ������� �ʾƵ� ���̺��� ���� �����Ͽ� �˻�
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP NATURAL JOIN DEPT;

--EMP ���̺�� DEPT ���̺��� SALES �μ��� �ٹ��ϴ� ����� �����ȣ,����̸�,�޿�,�μ���ȣ,�μ��̸�,�μ���ġ �˻�
--NATURAL JOIN�� ����� ��� �˻�������� ���� ���̺� �����ϴ� ������ �÷����� �˻��� �� ���̺��� ������� �ʾƵ� �˻� ����
SELECT EMPNO,ENAME,SAL,DEPTNO,DNAME,LOC FROM EMP NATURAL JOIN DEPT;

--JOIN USING : ���� ���̺� ���� �̸��� �÷��� ������ �ִ� ��� Ư�� �÷��� ����� �÷����� ���� ���� ���� �����Ͽ� �˻�
--����)SELECT �˻����,... FROM ���̺��1 JOIN ���̺��2 USING(�÷���)

--EMP ���̺�� DEPT ���̺��� SALES �μ��� �ٹ��ϴ� ����� �����ȣ,����̸�,�޿�,�μ��̸�,�μ���ġ �˻�
--�������� : EMP ���̺��� �μ���ȣ(DETPNO)�� DEPT ���̺��� �μ���ȣ(DETPNO)�� ���� ���� �����Ͽ� �˻� 
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP JOIN DEPT USING(DEPTNO);

-- INNER JOIN : ���������� ����Ͽ� ���� ���̺��� ���������� �´� ���� �����Ͽ� �˻�
--����)SELECT �˻����,... FROM ���̺��1 INNER JOIN ���̺��2 ON ��������

--EMP ���̺�� DEPT ���̺��� SALES �μ��� �ٹ��ϴ� ����� �����ȣ,����̸�,�޿�,�μ��̸�,�μ���ġ �˻�
--�������� : EMP ���̺��� �μ���ȣ(DETPNO)�� DEPT ���̺��� �μ���ȣ(DETPNO)�� ���� ���� �����Ͽ� �˻� 
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;--INNER Ű���� ���� ����

--EMP ���̺�� DEPT ���̺��� SALES �μ��� �ٹ��ϴ� ����� �����ȣ,����̸�,�޿�,�μ���ȣ,�μ��̸�,�μ���ġ �˻�
--INNER JOIN�� ����� ��� �˻�������� ���� ���̺� �����ϴ� ������ �÷����� �˻��� �� �ݵ�� ���̺��� ����Ͽ� �˻�
SELECT EMPNO,ENAME,SAL,EMP.DEPTNO,DNAME,LOC FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;
SELECT EMPNO,ENAME,SAL,DEPT.DEPTNO,DNAME,LOC FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;

--EMP ���̺�� SALGRADE ���̺��� ��� ����� �����ȣ,����̸�,�޿�,�޿���Ϲ�ȣ �˻�
--�˻����� : EMP ���̺��� �޿�(SAL)�� SALGRADE ���̺��� �ּұ޿�(LOSAL)�� �ִ�޿�(HISAL)�� ���Ե� ��� ���� ����
SELECT EMPNO,ENAME,SAL,GRADE FROM EMP JOIN SALGRADE ON SAL BETWEEN LOSAL AND HISAL;

--EMP ���̺�� DEPT ���̺�, SALGRADE ���̺��� ��� ����� �����ȣ,����̸�,�޿�,�μ��̸�,�μ���ġ,�޿���޹�ȣ �˻�
--��������-1 : EMP ���̺��� �μ���ȣ(DETPNO)�� DEPT ���̺��� �μ���ȣ(DETPNO)�� ���� ���� �����Ͽ� �˻� 
--�˻�����-2 : EMP ���̺��� �޿�(SAL)�� SALGRADE ���̺��� �ּұ޿�(LOSAL)�� �ִ�޿�(HISAL)�� ���Ե� ��� ���� ����
SELECT EMPNO,ENAME,SAL,DNAME,LOC,GRADE FROM EMP JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO 
    JOIN SALGRADE ON SAL BETWEEN LOSAL AND HISAL;
    
--EMP ���̺�� DEPT ���̺��� SALES �μ��� �ٹ��ϴ� ����� �����ȣ,����̸�,�޿�,�μ��̸�,�μ���ġ �˻�
--�������� : EMP ���̺��� �μ���ȣ(DETPNO)�� DEPT ���̺��� �μ���ȣ(DETPNO)�� ���� ���� �����Ͽ� �˻� 
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO WHERE DNAME='SALES';

--OUTER JOIN : ���������� ����Ͽ� ���� ���̺��� ���������� �´� �ุ �����Ͽ� �˻��ϴ� ���� �ƴ϶� ���������� ���� 
--�ʴ� ��� NULL�� �����Ͽ� �˻�
--����)SELECT �˻����,... FROM ���̺��1 {LEFT|RIGHT|FULL} OUTER JOIN ���̺��2 ON ��������
--LEFT OUTER JOIN : ���� ���̺��� ��� ���� �˻��ϰ� ������ ���̺��� ���������� �´� ���� ���� ��� NULL�� �����Ͽ� �˻�
--RIGHT OUTER JOIN : ������ ���̺��� ��� ���� �˻��ϰ� ���� ���̺��� ���������� �´� ���� ���� ��� NULL�� �����Ͽ� �˻�
--FULL OUTER JOIN : ��� ���̺��� ���� �����Ͽ� �˻��ϰ� �����ʰ� ���� ���̺� ���������� �´� ���� ���� ��� NULL�� �����Ͽ� �˻�

--EMP ���̺�� DEPT ���̺��� ��� ����� �����ȣ,����̸�,�޿�,�μ��̸�,�μ���ġ �˻�
--�������� : EMP ���̺��� �μ���ȣ(DETPNO)�� DEPT ���̺��� �μ���ȣ(DETPNO)�� ���� ���� �����Ͽ� �˻��ϵ� 
--���������� ���� �ʴ� ���� NULL�� �����Ͽ� �˻�
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP LEFT OUTER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP RIGHT OUTER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP FULL JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;--OUTER Ű���� ���� ����

