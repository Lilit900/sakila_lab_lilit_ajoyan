# Actors & Film Appearances

This page shows insights into actors in the Sakila database, including which movies each actor has appeared in.  
Users can explore the filmography of actors and see details about their roles.

```sql Actors
FROM sakila.actor;
```

## Analyzing actors

<Dropdown data={Actors} name="film" value=title
title="Select a film" >
</Dropdown>

```sql Actor
SELECT
    actor_name
FROM sakila.actor
WHERE title = '${inputs.film.value}'
GROUP BY actor_name
ORDER BY actor_name;
```

