select * from user;
select * from role;
select * from menu;


create or replace procedure sp_expire_all_ecno_point
as
begin
	-- delete table of p_to_expire ,and remove the task 
	delete from p_to_expire where 1 = 1;

	insert into p_detail (id,ecno,point,create_time,type,description)
		select sys_guid(),ecno ,availpoint,sysdate,'05','过期积分' from p_availpoint where 
		availpoint > 0;
	
	
	
end;
