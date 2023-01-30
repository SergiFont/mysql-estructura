USE optica; SELECT c.name as 'Cliente', count(s.sale_id) as 'Gafas compradas' FROM costumers c JOIN sales s on c.costumer_id=s.costumer_id WHERE c.costumer_id=4 GROUP BY c.name;
SELECT e.name as 'Empleado', g.glass_id as 'Número de gafa', s.sale_date as 'Fecha de la venta' FROM employees e JOIN sales s on e.employee_id = s.employee_id JOIN glasses g on s.glasses_glass_id = g.glass_id WHERE e.name = 'Tanya Collins' AND s.sale_date LIKE '1992%';
SELECT p.name as 'Proveedores', count(s.sale_id) as 'Número de ventas' FROM sales s JOIN glasses g on s.glasses_glass_id=g.glass_id JOIN glasses_brands gb on gb.brand_id=g.brand_id JOIN providers p on p.provider_id=gb.provider_id GROUP BY p.name