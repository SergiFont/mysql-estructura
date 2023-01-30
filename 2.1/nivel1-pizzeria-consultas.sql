USE pizzeriaSergi; SELECT c.city as 'Localidad', sum(oi.quantity) as 'Cantidad de bebidas vendidas' FROM costumers c JOIN orders o on c.costumer_id=o.costumer_id JOIN order_items oi on o.order_id=oi.order_id WHERE c.city = 'Barcelona' AND oi.product_id>=16;
SELECT concat(e.first_name,' ', e.surname) as 'Employee', count(o.order_id) as 'Orders' FROM employees e JOIN orders o on o.employee_id=e.employee_id WHERE e.employee_id=3;

