# Donnez le taux de productivité des agents administratifs de l'agence de Toulouse (en fonction du nombre de 
# rapports écrits et de leur ancienneté dans le poste) :

select count(reports.Id_Rep)/(year(now()) - year(Date_Stain_Per)), personal.Id_Per, Name_Per as Nom, First_Name_Per as Prenom from personal 
join cities on personal.Id_Cit = cities.Id_Cit
join writes on personal.Id_Per = writes.Id_Per
join reports on writes.Id_Rep = reports.Id_Rep
where Job_Per like 'Administrative Agent%' and Name_Cit like 'Toulouse%' 
group by personal.Id_Per, Name_Per, First_Name_Per;