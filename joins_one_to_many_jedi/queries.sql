SELECT lightsabers.color FROM lightsabers;

SELECT jedi.name, lightsabers.color from jedi;
INNER JOIN lightsabers
ON jedi.id = lightsabers.owner_id;