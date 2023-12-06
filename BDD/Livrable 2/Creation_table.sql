#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

Drop database if exists ProjetBDD;
Create database ProjetBDD;
use ProjetBDD;


#------------------------------------------------------------
# Table: Task
#------------------------------------------------------------
use ProjetBDD;
Drop table if exists Task;
CREATE TABLE Task(
        Id_Tas   Int  Auto_increment  NOT NULL ,
        Name_Tas Varchar (200) NOT NULL
	,CONSTRAINT Task_PK PRIMARY KEY (Id_Tas)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Gases
#------------------------------------------------------------
Drop table if exists Gases;
CREATE TABLE Gases(
        Id_Gas   Int  Auto_increment  NOT NULL ,
        Name_Gas Varchar (50) NOT NULL ,
        Type_Gas Varchar (50) NOT NULL
	,CONSTRAINT Gases_PK PRIMARY KEY (Id_Gas)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Reports
#------------------------------------------------------------
Drop table if exists Reports;
CREATE TABLE Reports(
        Id_Rep   Int  Auto_increment  NOT NULL ,
        Date_Rep Date NOT NULL ,
        Area_Rep Varchar (50) NOT NULL
	,CONSTRAINT Reports_PK PRIMARY KEY (Id_Rep)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Region
#------------------------------------------------------------
Drop table if exists Region;
CREATE TABLE Region(
        Id_Reg   Int  Auto_increment  NOT NULL ,
        Name_Reg Varchar (50) NOT NULL
	,CONSTRAINT Region_PK PRIMARY KEY (Id_Reg)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Cities
#------------------------------------------------------------
Drop table if exists Cities;
CREATE TABLE Cities(
        Id_Cit          Int  Auto_increment  NOT NULL ,
        Name_Cit        Varchar (50) NOT NULL ,
        Postal_Code_Cit Varchar (50) NOT NULL ,
        Street_Cit      Varchar (50) NOT NULL ,
        Building_Cit    Varchar (50) NOT NULL ,
        Floor_Cit       Int NOT NULL ,
        Id_Reg          Int
	,CONSTRAINT Cities_PK PRIMARY KEY (Id_Cit)

	,CONSTRAINT Cities_Region_FK FOREIGN KEY (Id_Reg) REFERENCES Region(Id_Reg)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Agencies
#------------------------------------------------------------
Drop table if exists Agencies;
CREATE TABLE Agencies(
        Id_Age   Int  Auto_increment  NOT NULL ,
        Name_Age Varchar (50) NOT NULL ,
        Id_Cit   Int
	,CONSTRAINT Agencies_PK PRIMARY KEY (Id_Age)

	,CONSTRAINT Agencies_Cities_FK FOREIGN KEY (Id_Cit) REFERENCES Cities(Id_Cit)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Personal
#------------------------------------------------------------
Drop table if exists Personal;
CREATE TABLE Personal(
        Id_Per         Int  Auto_increment  NOT NULL ,
        Name_Per       Varchar (50) NOT NULL ,
        First_Name_Per Varchar (50) NOT NULL ,
        Date_Per       Date NOT NULL ,
        Date_Stain_Per Date NOT NULL ,
        Job_Per        Varchar (50) NOT NULL ,
        Id_Tas         Int NOT NULL ,
        Id_Age         Int NOT NULL ,
        Id_Cit         Int
	,CONSTRAINT Personal_PK PRIMARY KEY (Id_Per)

	,CONSTRAINT Personal_Task_FK FOREIGN KEY (Id_Tas) REFERENCES Task(Id_Tas)
	,CONSTRAINT Personal_Agencies0_FK FOREIGN KEY (Id_Age) REFERENCES Agencies(Id_Age)
	,CONSTRAINT Personal_Cities1_FK FOREIGN KEY (Id_Cit) REFERENCES Cities(Id_Cit)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Sensors
#------------------------------------------------------------
Drop table if exists Sensors;
CREATE TABLE Sensors(
        Num_Sen Int  Auto_increment  NOT NULL ,
        Id_Per  Int NOT NULL
	,CONSTRAINT Sensors_PK PRIMARY KEY (Num_Sen)

	,CONSTRAINT Sensors_Personal_FK FOREIGN KEY (Id_Per) REFERENCES Personal(Id_Per)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Collect
#------------------------------------------------------------
Drop table if exists Collect;
CREATE TABLE Collect(
        Ref_Col             Int  Auto_increment  NOT NULL ,
        Date_Col            Date NOT NULL ,
        Data_Col            Float NOT NULL ,
        Sector_Activity_Col Varchar (500) NOT NULL ,
        Values_Prg_Col      Int NOT NULL ,
        Num_Sen             Int NOT NULL ,
        Id_Rep              Int NOT NULL
	,CONSTRAINT Collect_PK PRIMARY KEY (Ref_Col)

	,CONSTRAINT Collect_Sensors_FK FOREIGN KEY (Num_Sen) REFERENCES Sensors(Num_Sen)
	,CONSTRAINT Collect_Reports0_FK FOREIGN KEY (Id_Rep) REFERENCES Reports(Id_Rep)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Manage
#------------------------------------------------------------
Drop table if exists Manage;
CREATE TABLE Manage(
        Num_Sen Int NOT NULL ,
        Id_Age  Int NOT NULL
	,CONSTRAINT Manage_PK PRIMARY KEY (Num_Sen,Id_Age)

	,CONSTRAINT Manage_Sensors_FK FOREIGN KEY (Num_Sen) REFERENCES Sensors(Num_Sen)
	,CONSTRAINT Manage_Agencies0_FK FOREIGN KEY (Id_Age) REFERENCES Agencies(Id_Age)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Measure
#------------------------------------------------------------
Drop table if exists Measure;
CREATE TABLE Measure(
        Num_Sen Int NOT NULL ,
        Id_Gas  Int NOT NULL
	,CONSTRAINT Measure_PK PRIMARY KEY (Num_Sen,Id_Gas)

	,CONSTRAINT Measure_Sensors_FK FOREIGN KEY (Num_Sen) REFERENCES Sensors(Num_Sen)
	,CONSTRAINT Measure_Gases0_FK FOREIGN KEY (Id_Gas) REFERENCES Gases(Id_Gas)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Write
#------------------------------------------------------------
Drop table if exists Writes ;
CREATE TABLE Writes(
        Id_Per Int NOT NULL ,
        Id_Rep Int NOT NULL
	,CONSTRAINT Write_PK PRIMARY KEY (Id_Per,Id_Rep)

	,CONSTRAINT Write_Personal_FK FOREIGN KEY (Id_Per) REFERENCES Personal(Id_Per)
	,CONSTRAINT Write_Reports0_FK FOREIGN KEY (Id_Rep) REFERENCES Reports(Id_Rep)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Contain
#------------------------------------------------------------
Drop table if exists Contain;
CREATE TABLE Contain(
        Id_Rep Int NOT NULL ,
        Id_Gas Int NOT NULL
	,CONSTRAINT Contain_PK PRIMARY KEY (Id_Rep,Id_Gas)

	,CONSTRAINT Contain_Reports_FK FOREIGN KEY (Id_Rep) REFERENCES Reports(Id_Rep)
	,CONSTRAINT Contain_Gases0_FK FOREIGN KEY (Id_Gas) REFERENCES Gases(Id_Gas)
)ENGINE=InnoDB;
