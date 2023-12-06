DROP procedure IF EXISTS insert_sensors;

DELIMITER //
CREATE PROCEDURE insert_sensors(IN A int, IN B int)
BEGIN
	IF A IN(SELECT Num_Sen from sensors)
		THEN 
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Edition Error : This Num sensor id exist.";
	ELSE INSERT INTO sensors (Num_Sen,Id_Per) VALUES
    (A, B);
    END IF;
END //
DELIMITER ;

#CALL insert_sensors(31,31);

#-----------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------

DROP procedure IF EXISTS delete_sensors;

DELIMITER //
CREATE PROCEDURE delete_sensors(IN A Int)
BEGIN
	IF A IN(SELECT Num_Sen from sensors)
		THEN 
			DELETE FROM manage WHERE Num_Sen = A;
			DELETE FROM sensors WHERE Num_Sen = A;
			DELETE FROM measure WHERE Num_Sen = A;
	ELSE SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Edition Error : This person id does not exist";
	END IF;       
END //
DELIMITER ;

call delete_sensors(33);