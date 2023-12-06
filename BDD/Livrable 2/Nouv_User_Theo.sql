create user 'Theo'@'localhost'identified by '1234';
grant select on projetbdd.reports to 'Theo'@'localhost';
grant select on projetbdd.collect to 'Theo'@'localhost';
flush privileges;