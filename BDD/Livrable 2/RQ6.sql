# Afficher le secteur d'activité le plus polluant en Ile de France

select max(Values_Prg_Col) as Maximum from collect 
join sensors on collect.Num_Sen = sensors.Num_Sen 
join manage on sensors.Num_Sen = manage.Num_Sen 
join agencies on manage.Id_Age = agencies.Id_Age
join cities on agencies.Id_Cit = cities.Id_Cit
join region on cities.Id_Reg = region.Id_Reg
where Name_Reg = 'Île-de-France'