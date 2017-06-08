SELECT lightsabers.color FROM lightsabers;

SELECT jedi.*, lightsabers.* from jedi;
LEFT JOIN lightsabers
ON jedi.id = lightsabers.owner_id;