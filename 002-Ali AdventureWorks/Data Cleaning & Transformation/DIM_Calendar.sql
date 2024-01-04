SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] as Day --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] as WeekNbr, 
  [EnglishMonthName] as Month --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  left(EnglishMonthName, 3) as MonthShort, 
  [MonthNumberOfYear] as MonthNbr, 
  [CalendarQuarter], 
  [CalendarYear] as Year --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
WHERE CalendarYear=2019