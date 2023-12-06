# Pour un gaz donné, listez les rapports qui contiennent des données qui le concernent (on doit pouvoir donner le nom du gaz en paramètre)

DROP Procedure if exists Rq_011;
DELIMITER //
create procedure Rq_011(in Gas varchar(50))
BEGIN
select * from reports
join contain on reports.Id_Rep = contain.Id_Rep
join gases on contain.Id_Gas = gases.Id_Gas 
where Name_Gas = gas;
END//
DELIMITER ;

CALL Rq_011('NH3'); 