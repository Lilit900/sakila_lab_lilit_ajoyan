# Customer Rentals & Top Customers

This page shows insights into customer behavior in the Sakila database, including top-spending customers and their rental activity.


## Top Customers


```sql Customers
FROM sakila.customer;

```


---

###  A Barchart  

<BarChart
    data={Customers}
    title="Top 10 Customers by Total Spending"
    x=customer_name
    y=total_spend
    swapXY= true
/>


## Insights

- The chart highlights the customers contributing the most revenue.  
- Customers with a high number of rentals are frequent renters.  
- Comparing total spending vs. rental count can identify valuable but infrequent customers.  
- This information can help plan loyalty programs or targeted promotions.