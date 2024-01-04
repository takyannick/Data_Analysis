SELECT TOP (1000) p.ProductKey
      ,p.ProductAlternateKey as ProductItemCode
	  ,ps.EnglishProductSubcategoryName as Prod_SubCategory
	  ,pc.EnglishProductCategoryName as Prod_Category
      ,p.EnglishProductName as Product_Name
      ,p.StandardCost
      ,p.Color as Color
      ,p.SafetyStockLevel
      ,p.SizeRange
      ,p.ModelName
      ,p.StartDate
      ,isnull(p.Status, 'Outdated') as Prod_Status
  FROM (DimProduct as p left join DimProductSubcategory as ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey)
  left join DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey
  order by ProductKey
