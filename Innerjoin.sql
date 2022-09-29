use Anushka;
create table company(company_id int, company_name varchar(30),company_city varchar(30));
insert into company values(1,"Dominos","Los Vegas");
insert into company values(2,"Papa johns","San Francisco");
insert into company values(3,"Pizza hut","USA");
insert into company values(4,"Ah Pizz","France");
insert into company values(5,"Piza Day", "Los Angeles ");
insert into company values(6,"Pizzeria","Boston");
insert into company values(7,"Cheezie","Chicago");
describe company;
create table Items(Item_id int, Item_Name varchar(30), unitsSold int, Company_id int);
insert into items values(1,"Large Pizza",4,2);
insert into items values(2,"Garlic Knots",6,5);
insert into items values(3,"Large Pizza",9,7);
insert into items values(4,"Medium Pizza",8,5);
insert into items values(5,"Breadsticks",3,1);
insert into items values(6,"Medium Pizza",10,1);
insert into items values(7,"Small pizza",5,2);
insert into items values(8,"Small Pizza",11,7);
select items.Item_Name,company.company_city,Items.unitsSold
from Items
inner join company 
where company.company_id = items.company_id;
Footer
