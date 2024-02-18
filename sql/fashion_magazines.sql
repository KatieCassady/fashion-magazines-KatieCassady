Select
    customers.customer_name,
    printf("$%.2f", subscriptions.subscription_length * subscriptions.price_per_month) As 'Amount Due'
From
    orders Inner Join
    customers On orders.customer_id = customers.customer_id Inner Join
    subscriptions On orders.subscription_id = subscriptions.subscription_id
Where
    orders.order_status Like 'unpaid' And
    subscriptions.description Like 'Fashion Magazine'