SELECT Customer_T.CustomerID, CustomerName, Order_T.OrderID, OrderDate, OrderedQuanity as TotalQuantity
FROM Customer_T , Order_T, OrderLine_T
Join Order_T on Customer_T.CustomerID = Order_T.CustomerID
Join OrderLine_T on Order_T.OrderID = OrderLine_T.OrderID
WHERE Customer_T.CustomerID = Order_T.CustomerID;