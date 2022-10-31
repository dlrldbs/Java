SET SERVEROUT ON;

--���ù� : ����� �����Ͽ� �����ϱ� ���� ����
--IF : ���ǽĿ� ���� ����� ���� ����
--����)IF(���ǽ�) THEN ���;���;... END IF;
--���ǽ��� ( ) ��ȣ ���� ����

--EMP ���̺��� �����ȣ 7788�� ����� �����ȣ,����̸�,�μ���ȣ�� �˻��Ͽ� �����ȣ,����̸�,�μ���ȣ�� ����
--�μ����� ����ϴ� PL/SQL �ۼ�
--�μ���ȣ�� ���� �μ��� : 10(ACCOUNTING),20(RESEARCH),30(SAELS),40(OPERATION)
DECLARE
    VEMP EMP%ROWTYPE; /* ���ڵ� ���� ���� */
    VDNAME VARCHAR2(20) := NULL;  /* ��Į�� ���� ���� */
BEGIN
    SELECT * INTO VEMP FROM EMP WHERE EMPNO=7788;
    
    IF(VEMP.DEPTNO=10) THEN
        VDNAME := 'ACCOUNTING';
    END IF;    
    
    IF(VEMP.DEPTNO=20) THEN
        VDNAME := 'RESEARCH';
    END IF;    

    IF(VEMP.DEPTNO=30) THEN
        VDNAME := 'SAELS';
    END IF;    

    IF(VEMP.DEPTNO=40) THEN
        VDNAME := 'OPERATION';
    END IF;    

    DBMS_OUTPUT.PUT_LINE('�����ȣ = '||VEMP.EMPNO);
    DBMS_OUTPUT.PUT_LINE('����̸� = '||VEMP.ENAME);
    DBMS_OUTPUT.PUT_LINE('�μ��̸� = '||VDNAME);
END;
/


   