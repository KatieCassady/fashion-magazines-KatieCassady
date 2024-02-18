SELECT *
FROM orders
JOIN subscriptions
    ON orders.customer_id = subscriptions.customer_id;

SELECT *
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id
WHERE subscriptions.length >= 1