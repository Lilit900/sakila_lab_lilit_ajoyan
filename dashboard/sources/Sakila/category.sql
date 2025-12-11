SELECT
    f.rating,
    SUM(DATE_DIFF ('day', r.rental_date, r.return_date)) AS total_days_rented
FROM
    ´staging.film 
    LEFT JOIN inventory i ON f.film_id = i.film_id
    LEFT JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY
    f.rating
ORDER BY
    total_days_rented DESC;