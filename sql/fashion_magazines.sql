SELECT *
FROM orders
WHERE orders.order_status = 'unpaid';

SELECT *
FROM orders
JOIN customers
	ON orders.order_id = customers.customer_id;

SELECT *
FROM subscriptions
WHERE subscriptions.description = "unpaid",
     subscriptions.subscription_length * subscriptions.price_per_month AS amount_due
FROM orders
GROUP BY customer_name AND amount_due;
)
 
PRINTF()
