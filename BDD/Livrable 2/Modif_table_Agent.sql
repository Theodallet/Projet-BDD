DROP procedure IF EXISTS insert_agent;

DELIMITER //
CREATE PROCEDURE insert_agent(IN A INT, IN B VARCHAR(50), IN C VARCHAR(50), IN D DATE, IN E DATE, IN F VARCHAR(50), IN G INT, IN H INT, IN I INT)
BEGIN
	IF A IN (SELECT Id_Per FROM Personal)
    THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Edition Error : This person id exist.";
	ELSE INSERT INTO personal (Id_Per, Name_Per, First_Name_Per, DATE_Per, DATE_Stain_Per, Job_Per, Id_Tas, Id_Age, Id_Cit) 
		VALUES
		(A,B,C,D,E,F,G,H,I);
	END IF;
END //
DELIMITER ;


#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DROP PROCEDURE IF EXISTS set_agent;
DELIMITER //
CREATE PROCEDURE set_agent(IN A INT, IN B VARCHAR(50), IN C VARCHAR(50), IN D DATE, IN E DATE, IN F VARCHAR(50), IN G INT, IN H INT, IN I INT)
BEGIN
    IF A IN (SELECT Id_Per FROM Personal)
        THEN UPDATE Personal
        SET Id_Per = A,Name_Per = B,First_Name_Per = C,DATE_Per = D,DATE_Stain_Per = E,Job_Per = F,Id_Tas = G,Id_Age = H,Id_Cit = I
        WHERE Id_Per = A;
        
    ELSE SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Edition Error : This person id does not exist.";
    END IF;
END//
DELIMITER ;



#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DROP procedure IF EXISTS delete_agent;
DELIMITER //
CREATE PROCEDURE delete_agent(IN Id INT)
BEGIN
    DELETE FROM personal WHERE Id_Per = Id;
    DELETE FROM writes WHERE Id_Per = Id;
    DELETE FROM sensors WHERE Id_Per = Id;
END //
DELIMITER ;

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------;
#CALL insert_agent(32,'toto', 'tyty', '2006-08-08', '2022-01-01', 'TEST', 2, 1, 7);
#CALL set_agent(32,'totorherth', 'tytertberty', '2006-08-08', '2022-01-01', 'TEST', 2, 1, 7);
CALL delete_agent(32);