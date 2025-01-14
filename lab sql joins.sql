-- 1. Enumere la cantidad de películas por categoría.

SELECT COUNT(film_id) FROM film_category;

-- 2. Recupere el ID de la tienda, la ciudad y el país de cada tienda.

SELECT store_id FROM store
UNION ALL
SELECT city_id FROM city
UNION ALL
SELECT country_id FROM country;

-- 3. Calcule los ingresos totales generados por cada tienda en dólares.

SELECT SUM(amount) AS ventas_tot FROM payment;

-- 4. Determine el tiempo de exhibición promedio de las películas para cada categoría.

SELECT AVG(length) AS media_tiempo_exibicion FROM film;

-- BONUS: 
-- 5. Identifique las categorías de películas con el tiempo de exhibición promedio más largo.

-- 6. Muestre las 10 películas más alquiladas en orden descendente.

SELECT length, 
	AVG(length) AS promedio_duracion,
	COUNT(*) AS frecuencia
FROM film
GROUP BY length
ORDER BY frecuencia DESC
LIMIT 10;

-- 7. Determine si "Academy Dinosaur" se puede alquilar en la Tienda 1.

-- 8. Proporcione una lista de todos los títulos de películas diferentes, junto con su estado de disponibilidad en el inventario. Incluya una columna que indique si cada título está "Disponible" o "NO disponible". Tenga en cuenta que hay 42 títulos que no están en el inventario y esta información se puede obtener utilizando una declaración CASE combinada con IFNULL.city