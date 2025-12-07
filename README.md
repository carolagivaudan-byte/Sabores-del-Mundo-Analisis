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

Artículo más caro y menos caro.

Total de platos de origen americano.

Precio promedio de los platos.

Exploración de la tabla order_details

Consultas realizadas:

Total de pedidos únicos.

Los 5 pedidos con mayor cantidad de artículos.

Fecha del primer y último pedido registrado.

Total de pedidos realizados entre '2023-01-01' y '2023-01-05'.

🔗 Análisis combinado entre tablas

Se realizó un LEFT JOIN entre las tablas:

SELECT *
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id;


Esto permitió relacionar cada transacción con el artículo correspondiente del menú y analizar tendencias.

Hallazgos clave del análisis (5 insights importantes)

Aquí debes colocar tus conclusiones una vez ejecutes las consultas.
Ejemplo (puedo personalizarlo cuando tengas los resultados):

Los platos más vendidos pertenecen mayormente a la categoría X.

Los artículos con mayor precio no presentan la misma demanda que los de rango medio.

Ciertos productos del menú apenas aparecen en las transacciones, lo que sugiere baja aceptación.

Los días con mayor número de pedidos corresponden a X fechas, útil para optimizar horarios y personal.

Existe una tendencia clara hacia productos de cierto tipo, lo cual puede guiar futuras decisiones del menú.

ecnologías utilizadas

SQL (consultas, joins, agregaciones)

Base de datos relacional (ej. MySQL / PostgreSQL / SQLite)
