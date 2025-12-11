# Welcome to the Sakila Dashboard

This dashboard presents insights from the Sakila movie rental database.  
You can explore revenue by film category, see top-spending customers, and analyze rental durations.  

Use the dropdowns and charts below to interact with the data.

<Details title='How to edit this page'>
  This page can be found at `/pages/index.md`.  
  You can edit this markdown file and save it to see changes live in your browser.
</Details>

## Film Revenue by Category

```sql rentaly
SELECT 
title,
length
from sakila.rental;
```


```sql rental_summary
SELECT rating, total_days_rented
from sakila.category;
```