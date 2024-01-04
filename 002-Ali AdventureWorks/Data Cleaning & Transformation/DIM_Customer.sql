SELECT 
  c.CustomerKey as CustomerKey, 
  g.City, 
  --[Title], 
  c.FirstName as First_Name, 
  --[MiddleName], 
  c.LastName as Last_Name, 
  c.FirstName + ' ' + c.LastName as Full_Name, 
  c.BirthDate, 
  c.MaritalStatus, 
  case c.Gender when 'M' then 'Male' when 'F' then 'Female' end as gender, 
  c.DateFirstPurchase as DateFirstPurchase 
FROM 
  DimCustomer as c 
  LEFT JOIN DimGeography as g on c.GeographyKey = g.GeographyKey 
ORDER BY 
  CustomerKey
