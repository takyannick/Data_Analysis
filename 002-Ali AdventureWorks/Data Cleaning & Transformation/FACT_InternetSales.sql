SELECT 
	  s.SalesOrderNumber as Order_Nbr
	  ,s.ProductKey
      ,s.OrderDateKey as OrderDateKey
      ,s.CustomerKey
      ,s.CurrencyKey
      ,st.SalesTerritoryRegion as Region
	  ,st.SalesTerritoryCountry as Country
      ,s.OrderQuantity
      ,s.UnitPrice
      ,s.SalesAmount
	  ,s.ProductStandardCost as Cost
FROM FactInternetSales as s left join DimSalesTerritory as st on st.SalesTerritoryKey = s.SalesTerritoryKey
where left(OrderDateKey, 4) >= year(getdate()) - 2 
Order by s.SalesOrderNumber asc
