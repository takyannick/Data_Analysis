SELECT 
	  s.SalesOrderNumber
	  ,s.ProductKey
      ,s.OrderDateKey as OrderDateKey
      ,s.CustomerKey
      ,s.CurrencyKey
      ,st.SalesTerritoryRegion
	  ,st.SalesTerritoryCountry
      ,s.OrderQuantity
      ,s.UnitPrice
      ,s.SalesAmount
	  ,s.ProductStandardCost
FROM FactInternetSales as s left join DimSalesTerritory as st on st.SalesTerritoryKey = s.SalesTerritoryKey
where left(OrderDateKey, 4) >= year(getdate()) - 2 
Order by s.SalesOrderNumber asc
