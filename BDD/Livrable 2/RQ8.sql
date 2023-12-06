# Donnez les noms des agents techniques maintenant des capteurs concernant les polluants acidificateurs.

select distinct personal.Id_Per, Name_Per as Nom, First_Name_Per as Prenom from personal
join agencies on personal.Id_Age = agencies.Id_Age
join manage on agencies.Id_Age = manage.Id_Age
join sensors on manage.Num_Sen = sensors.Num_Sen
join measure on sensors.Num_Sen = measure.Num_Sen
join gases on measure.Id_Gas = gases.Id_Gas
where Job_Per = 'Technical Agent' and Type_Gas = 'GRA';