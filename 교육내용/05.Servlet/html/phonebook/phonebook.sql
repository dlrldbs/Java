create table phonebook(phone varchar2(20) primary key, name varchar2(20), address varchar2(50));
INSERT INTO phonebook values('010-1111-1111','ȫ�浿','����� ���ı�');
INSERT INTO phonebook values('010-2222-2222','�Ӳ���','����� ������');
INSERT INTO phonebook values('010-3333-3333','����ġ','��õ�� ���̱�');
INSERT INTO phonebook values('010-4444-4444','������','������ �ȴޱ�');
INSERT INTO phonebook values('010-5555-5555','����','��õ�� ���̱�');
commit;

select * from phonebook;

desc phonebook;