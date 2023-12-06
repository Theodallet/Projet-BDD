# Listez l'ensemble du personnel technique de l'agence de Bordeaux

select Name_Per, First_Name_Per from personal
join agencies on personal.Id_Age = agencies.Id_Age
join cities on agencies.Id_Cit = cities.Id_Cit
where Job_Per = 'Technical Agent' and 
agencies.Id_Cit in (select Id_Cit from cities where Name_Cit = 'Bordeaux');