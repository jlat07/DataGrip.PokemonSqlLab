#Write a query that returns the following collumns:
SELECT p.name AS Pokemon_Name,
 t.trainername AS Trainer_Name,
 pt.pokelevel AS Level,
 p.secondary_type AS Secondary_Type,
 FROM trainers AS t, pokemons AS p, pokemon_trainer AS pt
 WHERE 
