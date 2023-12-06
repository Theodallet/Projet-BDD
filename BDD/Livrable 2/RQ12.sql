# Listez les régions dans lesquelles il y a moins de capteurs que d'agences.

select Region.Id_Reg, Name_Reg, count(manage.Num_Sen), count(agencies.Id_Age) from region
left join cities on region.Id_Reg = cities.Id_Reg
left join agencies on cities.Id_Cit = agencies.Id_Cit
left join manage on agencies.Id_Age = manage.Id_Age
left join sensors on manage.Num_Sen = sensors.Num_Sen
group by region.Id_Reg, Name_Reg
having count(sensors.Num_Sen) < count(agencies.Id_Age);


