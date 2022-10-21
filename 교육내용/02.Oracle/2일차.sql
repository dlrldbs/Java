--�����Լ� : �Ű������� ���ڰ��� ���޹޾� ����ó���Ͽ� ������� ��ȯ�ϴ� �Լ�

--ROUND(���ڰ�,�Ҽ����ڸ���) : ���ڰ��� ���޹޾� �Ҽ����ڸ��� ��ġ��ŭ �˻��ǵ��� �ݿø� ó���Ͽ� ��ȯ�ϴ� �Լ�
--DAUL : �˻� ���̺� ���� SELECT ����� �ۼ��� ��� ����ϴ� ������ ���̺�
SELECT ROUND(45.582,2),ROUND(45.582,0),ROUND(45.582,-1) FROM DUAL;

--TRUNC(���ڰ�,�Ҽ����ڸ���) : ���ڰ��� ���޹޾� �Ҽ����ڸ��� ��ġ��ŭ �˻��ǵ��� ���� ó���Ͽ� ��ȯ�ϴ� �Լ�
SELECT TRUNC(45.582,2),TRUNC(45.582,0),TRUNC(45.582,-1) FROM DUAL;

--CEIL(���ڰ�) : ���ڰ��� ���޹޾� �Ҽ��� ���� ���� ������ ��� ������ ���ڰ�(������)�� ��ȯ�ϴ� �Լ�
SELECT CEIL(15.3),CEIL(-15.3) FROM DUAL;

--FLOOR(���ڰ�) : ���ڰ��� ���޹޾� �Ҽ��� ���� ���� ������ ��� ���ҵ� ���ڰ�(������)�� ��ȯ�ϴ� �Լ�
SELECT FLOOR(15.3),FLOOR(-15.3) FROM DUAL;

--MOD(���ڰ�1,���ڰ�2) : �ΰ��� ���ڰ��� ���޹޾� ���ڰ�1�� ���ڰ�2�� ���� �������� ��ȯ�ϴ� �Լ�
SELECT 20/8,MOD(20,8) FROM DUAL;

--POWER(���ڰ�1,���ڰ�2) : �ΰ��� ���ڰ��� ���޹޾� ���ڰ�1�� ���ڰ�2�� �������� ��ȯ�ϴ� �Լ�
SELECT 3*3*3*3*3,POWER(3,5) FROM DUAL;

--��¥�Լ� : �Ű������� ��¥���� ���޹޾� ����ó���Ͽ� ������� ��ȯ�ϴ� �Լ�

--SYSDATE : �ý����� ���� ��¥�� �ð��� �����ϱ� ���� Ű����
--SYSDATE Ű������ �˻����� �⺻������ [RR/MM/DD] ������ �������� �˻������� ���������δ� ��¥�� �ð� ����
SELECT SYSDATE FROM DUAL;

--ADD_MONTHS(��¥��,���ڰ�) : ��¥���� ���޹޾� ���ڰ���ŭ�� �������� ���� ��¥���� ��ȯ�ϴ� �Լ�
SELECT SYSDATE,ADD_MONTHS(SYSDATE,5) FROM DUAL;

--��¥���� ���� ����
--��¥�� + ���ڰ� = ��¥��  >>  �� ����
SELECT SYSDATE,SYSDATE+7 FROM DUAL;

--��¥�� + ���ڰ�/24 = ��¥��  >>  �ð� ����
SELECT SYSDATE,SYSDATE+100/24 FROM DUAL;

--��¥�� - ���ڰ� = ��¥��  >>  �� ����
SELECT SYSDATE,SYSDATE-7 FROM DUAL;

--��¥�� - ���ڰ�/24 = ��¥��  >>  �ð� ����
SELECT SYSDATE,SYSDATE-100/24 FROM DUAL;

--��¥�� - ��¥�� = ���ڰ�  >>  ��(�Ǽ���)
SELECT EMPNO,ENAME,HIREDATE,SYSDATE-HIREDATE FROM EMP WHERE EMPNO=7499;
SELECT EMPNO,ENAME,HIREDATE,CEIL(SYSDATE-HIREDATE)||'��' "�ټ��ϼ�" FROM EMP WHERE EMPNO=7499;

--NEXT_DAY(��¥��,����) : ��¥���� ���޹޾� �̷��� Ư�� ������ ��¥���� ��ȯ�ϴ� �Լ�
SELECT SYSDATE,NEXT_DAY(SYSDATE,'��') FROM DUAL;

--����Ŭ�� ���ӵ� ���� ����� ȯ��(���� - SESSION)�� ���� ��� ��� �� ��¥�� �ð� ������ �ٸ��� ����Ǿ� ���
--������ ��� ��� �� ��¥�� �ð� ���� ���� ����
ALTER SESSION SET NLS_LANGUAGE='AMERICAN';--������ ��� ��� ���� : AMERICAN
SELECT SYSDATE,NEXT_DAY(SYSDATE,'SAT') FROM DUAL;

ALTER SESSION SET NLS_LANGUAGE='KOREAN';--������ ��� ��� ���� : KOREAN
SELECT SYSDATE,NEXT_DAY(SYSDATE,'��') FROM DUAL;

--TRUNC(��¥��,ǥ������) : ��¥���� ���޹޾� ���ϴ� ������ ǥ���ϰ� ������ �����Ͽ� �ʱⰪ���� �˻��ϵ��� ��ȯ�ϴ� �Լ�
SELECT SYSDATE,TRUNC(SYSDATE,'MONTH'),TRUNC(SYSDATE,'YEAR') FROM DUAL;

