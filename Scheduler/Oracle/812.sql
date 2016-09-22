/**
 * by antoine_mpo
 * from http://www.jdelist.com/vb4/showthread.php/44744-Oracle-SQL-to-get-schedule-time-in-F91300-(Schedule-Job-Master)
*/
select trim(a.SJSCHJBNM) Job_Name,
trim(a.SJSCHRPTNM) UBE_Name, 
trim(a.SJSCHVER) UBE_Version,
trim(SJSCHJBSTAT) Status, 
drdl01 RECURRENCE_TYPE,
trim(a.SJSCHUSER) "USER",
trim(a.SJJOBQUE) Job_Queue,
to_char(FROM_TZ(CAST((TO_DATE('1970-01-01', 'YYYY-MM-DD') + numtodsinterval(SJSCHSTTIME, 'MINUTE')) AS TIMESTAMP), 'UTC')
AT TIME ZONE 'Europe/Paris','HH24:MI:SS') ScheduleStartTime
from sy812.f91300 a left outer join prodctl.f0005 b on trim(b.drky)=trim(a.sjschrcrtyp)
where a.SJSCHJBSTAT ='01' and b.drsy='H91' and b.drrt='RC'
order by 8;
