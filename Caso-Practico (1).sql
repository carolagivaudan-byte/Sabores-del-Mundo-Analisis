--Exploración de la tabla menu items

--Numero de Articulos en el Menu 
SELECT COUNT(*) AS total_articulos
FROM menu_items;

--¿Cuál es el artículo menos caro y el más caro en el menú?
SELECT item_name, price
FROM menu_items
ORDER BY price ASC
LIMIT 1;  -- Más barato

SELECT item_name, price
FROM menu_items
ORDER BY price DESC
LIMIT 1;  -- Más caro

--¿Cuántos platos americanos hay en el menú?
SELECT COUNT(*) AS platos_americanos
FROM menu_items
WHERE category = 'American';

--¿Cuál es el precio promedio de los platos?
SELECT AVG(price) AS precio_promedio
FROM menu_items;

----Exploración de la tabla order details

--¿Cuántos pedidos únicos se realizaron en total?
SELECT COUNT(DISTINCT order_id) AS pedidos_unicos
FROM order_details;

--¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos?
SELECT order_id,
       COUNT(item_id) AS cantidad_articulos
FROM order_details
GROUP BY order_id
ORDER BY cantidad_articulos DESC
LIMIT 5;

--¿Cuándo se realizó el primer pedido y el último pedido?
SELECT MIN(order_date) AS primer_pedido,
       MAX(order_date) AS ultimo_pedido
FROM order_details;

--¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05'?
SELECT COUNT(DISTINCT order_id) AS pedidos_periodo
FROM order_details
WHERE order_date BETWEEN '2023-01-01' AND '2023-01-05';

SELECT od.order_id,
       od.order_date,
       od.order_time,
       mi.item_name,
       mi.category,
       mi.price
FROM order_details AS od
LEFT JOIN menu_items AS mi
       ON od.item_id = mi.menu_item_id;

CREATE VIEW orders_full AS
SELECT od.order_id,
       od.order_date,
       od.order_time,
       mi.menu_item_id,
       mi.item_name,
       mi.category,
       mi.price
FROM order_details od
LEFT JOIN menu_items mi
     ON od.item_id = mi.menu_item_id;

--ANALISIS
--Productos mas vendidos
SELECT item_name,
       COUNT(*) AS veces_vendido
FROM orders_full
GROUP BY item_name
ORDER BY veces_vendido DESC
LIMIT 10;


--Categorias mas populares 
SELECT category,
       COUNT(*) AS cantidad_vendida
FROM orders_full
GROUP BY category
ORDER BY cantidad_vendida DESC;


--Ingresos por producto 
SELECT item_name,
       SUM(price) AS ingresos
FROM orders_full
GROUP BY item_name
ORDER BY ingresos DESC;


--Ticket Promedio 
SELECT AVG(total_ticket) AS ticket_promedio
FROM (
    SELECT order_id, SUM(price) AS total_ticket
    FROM orders_full
    GROUP BY order_id
) t;

--Productos menos vendidos 
SELECT item_name,
       COUNT(*) AS veces_vendido
FROM orders_full
GROUP BY item_name
ORDER BY veces_vendido ASC
LIMIT 10;

