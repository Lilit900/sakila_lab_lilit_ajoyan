# Film Revenue by Category

This page shows total revenue for each film category in the Sakila database.  
Use the chart and table below to explore which categories generate the most revenue.

---

## Revenue Table

```sql Revenue
FROM sakila.category;

```

<BarChart
    data={Revenue}
    title="Total Revenue by Film Category"
    x=category_name
    y=total_revenue
    
/>

---
```sql Film
FROM sakila.category_film;

```

## Analyzing films by categories

<Dropdown data={Film} name=category_name value=category_name
title="Select a category" >
</Dropdown>


```sql Film_Categories
SELECT
    title
FROM sakila.category_film
WHERE category_name = '${inputs.category_name.value}'
ORDER BY title;
```

---
## Insights

- Categories with the highest revenue appear at the top of the chart.
- This helps identify which film genres are the most profitable.
- Categories with lower revenue may indicate niche audiences or lower rental frequency.
- Use these insights to guide decisions on inventory, promotions, or marketing strategies.
