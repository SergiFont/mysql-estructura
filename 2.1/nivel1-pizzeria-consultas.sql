-- Pizzeria:
-- Llista quants productes de tipus “Begudes”. s'han venut en una determinada localitat.

USE pizzeria;

SELECT c.city as 'Localidad', sum(od.quantity) as 'Cantidad de bebidas vendidas'
FROM costumers c
JOIN orders o
	on c.costumer_id=o.costumer_id
JOIN order_items oi
	on o.order_id=oi.order_id
JOIN order_drink od
	on oi.order_id=od.order_id
WHERE c.city = 'Barcelona';

-- Llista quantes comandes ha efectuat un determinat empleat/da.

SELECT concat(e.first_name,' ', e.surname) as 'Employee', count(o.order_id) as 'Orders'
FROM employees e
JOIN orders o
	on o.employee_id=e.employee_id
WHERE e.employee_id=3

