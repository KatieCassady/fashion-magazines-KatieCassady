SELECT *
FROM orders
WHERE orders.order_status = 'unpaid';

SELECT *
FROM orders
JOIN customers
	ON orders.order_id = customers.customer_id;

WITH previous_query AS (SELECT *
	FROM subscriptions
	JOIN orders
		ON orders.customer_id = subscriptions.subscription_id
	WHERE orders.order_status = "unpaid"
		AND subscriptions.description = 'Fashion Magazine';
)

SELECT customers.customer_name, 
   price_per_month * subscription_length AS amount_due
FROM previous_query

 
PRINTF()
