SELECT 	r.FechaRevion AS Fecha, CONCAT( v.Nombre, ' ', v.Apellidos ) AS Medico, r.Motivo, r.Sintomas, r.Diagnostico, m.descripcion AS Medicamento, mr.Dosis
FROM revision 			AS r
JOIN examenrevision 		AS e 	ON r.IdRevision 	= e.IdRevision
JOIN veterinario		AS v 	ON e.Identificacion 	= v.Identificacion
JOIN medicamentorevision 	AS mr	ON r.IdRevision 	= mr.IdRevision
JOIN medicamentos		AS m	ON mr.IdMedicamento	= m.Idmedicamento