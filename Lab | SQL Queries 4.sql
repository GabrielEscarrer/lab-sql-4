#1 Get film ratings.
 Select rating as "rating", title as "movie title" from sakila.film;
 
#2 Get release years.
Select release_year as "release_year", title as "movie title" from sakila.film;

#3 Get all films with ARMAGEDDON in the title
Select * from sakila.film 
where title LIKE "%ARMAGEDDON%";

#4 Get all films with APOLLO in the title
Select * from sakila.film 
where title LIKE "%APOLLO%";

#5 Get all films which title ends with APOLLO.
Select * from sakila.film 
where title regexp "APOLLO$";

#6 Get all films with word DATE in the title.
Select * from sakila.film 
where title LIKE "%DATE%";

#7 Get 10 films with the longest title.
Select title from sakila.film
order by length(title) DESC
limit 10; 

#8 Get 10 the longest films.
Select length as "length", title as "title" from sakila.film
order by (length) DESC
limit 10; 

#9 How many films include Behind the Scenes content?
Select * from sakila.film
where special_features = "Behind the Scenes";

#10 List films ordered by release year and title in alphabetical order.
Select * from sakila.film
order by release_year, title;
