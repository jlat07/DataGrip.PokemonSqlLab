#What is each pokemon's primary type?
SELECT p.name AS name, t.name AS type
FROM pokemons AS p, types AS t 
WHERE primary_type = t.id;

#What is Rufflet's secondary type?
SELECT secondary_type FROM pokemons WHERE name = 'Rufflet';

#What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT p.name
FROM pokemons AS p, trainers as t, pokemon_trainer as pt
WHERE p.id = pt.pokemon_id AND t.trainerID = pt.trainerID AND t.trainerid = 303;

#How many pokemon have a secondary type Poison
SELECT count(p.id)
FROM pokemons AS p, types AS t
WHERE p.secondary_type = t.id AND t.name = "Poison";

#What are all the primary types and how many pokemon have that type?
SELECT ty.name, count(*)
FROM types AS ty, pokemons AS p
WHERE ty.id = p.primary_type
GROUP BY ty.name;

#How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT trainerid, COUNT(*)
FROM pokemon_trainer
WHERE pokelevel = 100
GROUP BY trainerid;

#How many pokemon only belong to one trainer and no other?
SELECT  pokemon_id , COUNT(pokemon_id)
FROM pokemon_trainer
GROUP BY pokemon_id
HAVING COUNT(pokemon_id) = 1;

