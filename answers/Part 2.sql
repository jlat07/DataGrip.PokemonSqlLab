#What are all the types of pokemon that a pokemon can have?
SELECT DISTINCT(primary_type) FROM pokemons;

#What is the name of the pokemon with id 45?
SELECT name FROM pokemons WHERE id = 45;

#How many pokemon are there?
 SELECT DISTINCT COUNT(*) FROM pokemons;
 
 SELECT COUNT(DISTINCT name) FROM pokemons;

#How many types are there?
SELECT COUNT(DISTINCT primary_type) FROM pokemons;

#How many pokemon have a secondary type?
SELECT COUNT(DISTINCT secondary_type) FROM pokemons;
