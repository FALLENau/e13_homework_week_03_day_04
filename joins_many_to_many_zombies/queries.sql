SELECT victims.name AS victim, zombies.name AS zombie, bittings.infected_on FROM victims;
INNER JOIN bittings
ON bittings.victim_id = victims.id;
INNER JOIN zombies
ON zombies.id = bittings.zombies_id;


