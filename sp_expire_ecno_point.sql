
create or replace sp_expiree_ecno_point
(in_ecno in varchar)

as 

begin

		delete from p_to_expire where ecno = in_ecno;

		
end;
