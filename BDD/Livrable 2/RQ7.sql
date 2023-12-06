# Classez les rapports concernant des émissions de NH3 par ordre chronologique.

select * from reports 
join contain on reports.Id_Rep = contain.Id_Rep
join gases on contain.Id_Gas = gases.Id_Gas
where Name_Gas = 'NH3'
order by Date_Rep ASC; 