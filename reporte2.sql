SELECT vr.FechaVacuna AS 'Fecha Aplicacion', CONCAT(vtr.Nombre, ' ', vtr.Apellidos) AS Medico, v.Descripcion AS Vacuna, vr.Comentario
FROM vacunarevision	AS vr
JOIN vacuna		AS v	ON vr.IdVacuna 		= v.IdVacuna
JOIN veterinario	AS vtr	ON vr.Identificacion 	= vtr.Identificacion