SELECT m.Nombre AS Mascota, CONCAT(c.Nombre, ' ', c.Apellidos) AS Cliente, c.Identificacion, COUNT(r.IdMascota) AS 'Numero de Mascotas'
FROM  	mascota			AS m
JOIN 	cliente			AS c	ON	m.Identificacion 	= 	c.Identificacion
JOIN 	revision		AS r	ON	m.IdMascota 		=	r.IdMascota
WHERE r.FechaRevion BETWEEN '20191122' AND '20201122'
GROUP BY r.IdMascota
ORDER BY COUNT(r.IdMascota) DESC
LIMIT 5