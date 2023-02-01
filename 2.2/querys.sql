USE tienda; SELECT nombre FROM producto;
SELECT nombre, precio FROM producto;
SELECT * FROM producto;
SELECT nombre, precio as 'Euros',  precio * 1.08929 as 'Dollars' FROM producto;
SELECT nombre as 'nombre de producto', precio as 'Euros', precio * 1.08929 as 'Dollars' FROM producto;
SELECT UPPER(nombre), precio FROM producto;
SELECT LOWER(nombre), precio FROM producto;
SELECT nombre, UPPER(SUBSTRING(nombre, 1, 2)) FROM fabricante;
SELECT nombre, ROUND(precio) FROM producto;
SELECT nombre, TRUNCATE(precio, 0) FROM producto;
SELECT codigo_fabricante FROM producto;
SELECT DISTINCT codigo_fabricante FROM producto;
SELECT nombre FROM fabricante ORDER BY nombre ASC;
SELECT nombre FROM fabricante ORDER BY nombre DESC;
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;
SELECT * FROM fabricante LIMIT 5;
SELECT * FROM fabricante WHERE codigo>=4 Limit 2;
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
SELECT nombre FROM producto WHERE codigo_fabricante=2;
SELECT p.nombre as 'Producto', p.precio as 'Precio ', f.nombre as 'Fabricante' FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo;
SELECT p.nombre as 'Producto', p.precio as 'Precio', f.nombre as 'Fabricante' FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo ORDER BY f.nombre;
SELECT p.codigo as 'Código Producto', p.nombre as 'Producto', f.codigo as 'Código Fabricante', f.nombre as 'Fabricante'  FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo;
SELECT p.nombre as 'Producto', p.precio as 'Precio', f.nombre as 'Fabricante' FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo ORDER BY p.precio ASC LIMIT 1;
SELECT p.nombre as 'Producto', p.precio as 'Precio', f.nombre as 'Fabricante' FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo ORDER BY p.precio DESC LIMIT 1;
SELECT p.nombre as 'Producto' FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo WHERE f.nombre='Lenovo';
SELECT p.nombre as 'Producto' FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo WHERE f.nombre='Crucial' AND p.precio > 200;
-- Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packard y Seagate. Sense utilitzar l'operador IN.
SELECT p.nombre as 'Producto', f.nombre as 'Fabricante' FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo WHERE f.nombre in ('Asus', 'Hewlett-Packard', 'Seagate');
SELECT p.nombre as 'Producto', p.precio as 'Precio ', f.nombre as 'Fabricante' FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo WHERE f.nombre LIKE '%e';
SELECT p.nombre as 'Producto', p.precio as 'Precio ', f.nombre as 'Fabricante' FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo WHERE f.nombre LIKE '%w%';
SELECT p.nombre as 'Producto', p.precio as 'Precio', f.nombre as 'Fabricante' FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo WHERE p.precio >=180 ORDER BY p.precio DESC, p.nombre ASC;
SELECT f.codigo as 'Código Fabricante', f.nombre as 'Fabricante' FROM fabricante f INNER JOIN producto p on p.codigo_fabricante=f.codigo;
SELECT f.codigo as 'Código Fabricante', f.nombre as 'Fabricante', p.nombre as 'Producto' FROM fabricante f LEFT JOIN producto p on p.codigo_fabricante=f.codigo;
SELECT f.codigo as 'Código Fabricante', f.nombre as 'Fabricante', p.nombre as 'Producto' FROM fabricante f LEFT JOIN producto p on p.codigo_fabricante=f.codigo WHERE p.nombre is NULL;
SELECT p.nombre as 'Producto', f.nombre as 'Fabricante' FROM fabricante f JOIN producto p on p.codigo_fabricante=f.codigo WHERE f.nombre='Lenovo';
-- Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense usar INNER JOIN).
SELECT p.nombre as 'Producto' FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo WHERE f.nombre='Lenovo' ORDER BY p.precio DESC LIMIT 1;
SELECT p.nombre as 'Producto' FROM producto p JOIN fabricante f on p.codigo_fabricante=f.codigo WHERE f.nombre='Hewlett-Packard' ORDER BY p.precio ASC LIMIT 1;
-- Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricant Lenovo.
-- Llesta tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.