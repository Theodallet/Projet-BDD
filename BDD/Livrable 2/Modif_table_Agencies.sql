DROP procedure IF EXISTS insert_agencies;

DELIMITER //
CREATE PROCEDURE insert_agencies(IN A int, IN B VARCHAR(50), IN C int)
BEGIN
	IF A IN(SELECT Id_Age from agencies)
		THEN 
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Edition Error : This agencies id exist.";
	ELSE INSERT INTO agencies (Id_Age, Name_Age, Id_Cit) VALUES
    (A, B, C);
    END IF;
END //
DELIMITER ;

#CALL insert_agencies(11, 'Agence test', 28);

#-----------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------

DROP procedure IF EXISTS delete_agencies;

DELIMITER //
CREATE PROCEDURE delete_agencies(IN A Int)
BEGIN
	IF A IN(SELECT Id_Age from agencies)
		THEN 
			DELETE FROM manage WHERE Id_Age = A;
			DELETE FROM agencies WHERE Id_Age = A;
	ELSE SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Edition Error : This agencies id does not exist.";
	END IF;       
END //
DELIMITER ;

call delete_agencies(11);