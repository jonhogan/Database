SELECT Customer_T.CustomerID, CustomerName, Order_T.OrderID, OrderDate, SUM(OrderedQuantity) AS TotalQuantity
FROM Customer_T , Order_T, OrderLine_T
WHERE Order_T.CustomerID = Customer_T.CustomerID and OrderLine_T.OrderID = Order_T.OrderID AND Customer_T.CustomerID = 1 GROUP BY OrderID;