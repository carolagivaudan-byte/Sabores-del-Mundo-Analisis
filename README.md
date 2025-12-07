# Sabores-del-Mundo-Analisis
Sabores del Mundo – Análisis del Menú y Transacciones

Este proyecto analiza el rendimiento del nuevo menú del restaurante “Sabores del Mundo”, reconocido por su cocina auténtica y ambiente acogedor. A partir de los datos recopilados durante el año, se busca identificar qué productos han tenido mayor éxito entre los clientes y cuáles presentan oportunidades de mejora.

Objetivo del Proyecto

Analizar el menú y las transacciones registradas.
Identificar los productos más populares y menos solicitados.
Obtener información clave que ayude a optimizar las ventas del restaurante.

Contenido del Proyecto

Este análisis se basa en dos tablas principales:

menu_items → Información de los artículos del menú.
order_details → Detalles de las transacciones realizadas por los clientes.

Pasos para ejecutar el proyecto
1️Crear la base de datos

Ejecuta el archivo:

create_restaurant_db.sql

Esto generará las tablas y los datos necesarios.

Exploración de la tabla menu_items

Consultas realizadas:

Número total de artículos en el menú. 
32

Artículo más caro y menos caro.
Menos caro: Edamame
Mas caro: Shrimp Scampi

Total de platos de origen americano.
Hay 6 platos americanos

Precio promedio de los platos.
El precio promedio de los platos es de 13.28

Exploración de la tabla order_details

Consultas realizadas:

Total de pedidos únicos.
Pedidos Unicos:5370

Los 5 pedidos con mayor cantidad de artículos.
Pedidos: 440, 2675, 3473, 4305 y 443 con 14 articulos pedidos cada uno 

Fecha del primer y último pedido registrado.
El primer pedido se realizo en 2023-01-01 y el ultimo pedido se realizo el 2023-03-31

Total de pedidos realizados entre '2023-01-01' y '2023-01-05'.
S e realizaron 308 pedidos 

🔗 Análisis combinado entre tablas

Se realizó un LEFT JOIN entre las tablas:

SELECT *
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id;


Esto permitió relacionar cada transacción con el artículo correspondiente del menú y analizar tendencias.

Hallazgos clave del análisis (5 insights importantes)

Productos mas vendidos 
Los productos mas vendidos son:
"Hamburger" con 622 pedidos 
"Edamame"	 con 620 pedidos
"Korean Beef Bowl"	con 588 pedidos
"Cheeseburger"	con 583 pedidos
"French Fries"	con 571 pedidos
"Tofu Pad Thai" con	562 pedidos
"Steak Torta"	 con 489 pedidos
"Spaghetti & Meatballs" con	470 pedidos
"Mac & Cheese"	con 463 pedidos
"Chips & Salsa" con	461 pedidos

La categoria mas vendida es Asian con 3470 ventas

El producto Korean Beef Bowl es el producto con mayor ingreso con un valor de 10554

El producto menos vendido es el Chicken Tacos con 123 ventas 

El ticket promedio es de 29.79

Tecnologías utilizadas

SQL (consultas, joins, agregaciones)

Base de datos relacional (ej. MySQL / PostgreSQL / SQLite)
