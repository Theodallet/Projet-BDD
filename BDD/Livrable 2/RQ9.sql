#Pour chaque gaz, donnez la somme de ses émissions (en tonnes) dans la région Ile-de-France en 2020.

select Name_Gas as Gases, sum(Data_Col) as Total from collect
join sensors on collect.Num_Sen = sensors.Num_Sen 
join manage on sensors.Num_Sen = manage.Num_Sen 
join agencies on manage.Id_Age = agencies.Id_Age
join cities on agencies.Id_Cit = cities.Id_Cit
join region on cities.Id_Reg = region.Id_Reg
join measure on sensors.Num_Sen = measure.Num_sen
join gases on measure.Id_Gas = gases.Id_Gas
where year(Date_Col) = 2020 and Name_Reg = 'Île-de-France'
group by Name_Gas ;
