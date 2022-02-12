use sakila;

#Create a table rentals_may to store the data from rental table with information for the month of May.
#Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
drop table sakila.rentals_may;

select * from sakila.rental where month(rental_date) = 5;

create table sakila.rentals_may as
(select * from sakila.rental where month(rental_date) = 5);

select * from sakila.rentals_may;

#Create a table rentals_june to store the data from rental table with information for the month of June.
#Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

create table sakila.rentals_june as
(select * from sakila.rental where month(rental_date) = 6);


#or?
(select* from sakila.rental where rental_date between "2005-06-01" and "2005-06-30");

#Check the number of rentals for each customer for May.

select count(rental_id), customer_id
from sakila.rentals_may
group by customer_id
order by count(rental_id) desc;

#Check the number of rentals for each customer for June.

select count(rental_id), customer_id
from sakila.rentals_june
group by customer_id
order by count(rental_id) desc;

#Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:

	#Check the number of rentals for each customer for May

	#Check the number of rentals for each customer for June

	#Hint: You can store the results from the two queries in two separate dataframes.

#Write a function that checks if customer borrowed more or less films in the month of June as compared to May.



#Hint: For this part, you can create a join between the two dataframes created before, using the merge function available for pandas dataframes.
#Here is a link to the documentation for the merge function.