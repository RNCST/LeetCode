/* Write your PL/SQL query statement below */

select a.patient_id 
     , a.patient_name
     , a.conditions
  from patients a
 where 1=1 
   and conditions like 'DIAB1%' or conditions like '% DIAB1%'