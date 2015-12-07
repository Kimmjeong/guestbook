-- select
select no, name, password, message, to_char(reg_date, 'YYYY-MM-DD HH:MI:SS') reg_date from guestbook order by no desc;


select sysdate from dual;

-- insert
insert into guestbook values(guestbook_seq.nextval, '김민정', '1234','ㅎㅇ', SYSDATE);


commit;

delete from guestbook where password='1111';

select password from guestbook where no=6;

drop sequence guestbook_seq; 


CREATE SEQUENCE GUESTBOOK_SEQ
INCREMENT BY 1
START WITH 1
MAXVALUE 9999999
NOCACHE
NOCYCLE;