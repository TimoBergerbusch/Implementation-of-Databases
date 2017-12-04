-- a)
SELECT DISTINCT l.country FROM language l 
	WHERE l.name = 'German' OR l.name = 'English';


-- b)
SELECT DISTINCT l.name FROM 
	Religion r JOIN Language l ON r.country=l.country 
	WHERE r.name = 'Buddhist';

-- c)
SELECT river FROM River EXCEPT
SELECT river FROM encompasses 
	NATURAL INNER JOIN geo_source 
	WHERE continent='Europe';

-- d)
SELECT DISTINCT c.name, lake, mountain FROM 
	Country c LEFT OUTER JOIN geo_lake l ON c.code=l.country 
		  LEFT OUTER JOIN geo_Mountain m ON c.code=m.country 
	WHERE lake IS NOT NULL OR mountain IS NOT NULL;