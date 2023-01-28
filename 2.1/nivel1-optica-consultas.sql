-- Llista el total de compres d’un client/a.

SELECT name as 'Customer', number_purchuases as 'Total of purchuases'
FROM costumers;

-- Llista les diferents ulleres que ha venut un empleat durant un any.

SELECT e.name as 'Empleado', g.glass_id as 'Número de gafa', s.sale_date as 'Fecha de la venta'
FROM employees e

JOIN store st 
	on e.employee_id = st.employee_id
JOIN sales s
	on st.sale_id = s.sale_id
JOIN glasses g
	on s.glasses_glass_id = g.glass_id
WHERE e.name = 'Tanya Collins' AND s.sale_date LIKE '1992%';

-- Llista els diferents proveïdors que han subministrat ulleres venudes amb èxit per l'òptica.

SELECT p.name as 'Proveedor', count(s.sale_id) as 'Número de ventas'
FROM providers p
JOIN sales s
	on p.provider_id = s.provider_id
JOIN glasses g
	on g.glass_id = s.glasses_glass_id
JOIN store st
	on s.sale_id = st.sale_id
WHERE p.provider_id = 4