SELECT CONCAT(c.Nombre, ' ', c.Apellidos) AS Cliente, c.Identificacion, COUNT(m.Identificacion) AS 'Numero de Mascotas'
FROM cliente	AS c
JOIN mascota	AS m	ON	c.Identificacion = m.Identificacion
GROUP BY m.Identificacion
HAVING COUNT(m.Identificacion) > 3