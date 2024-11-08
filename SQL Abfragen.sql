-- Abfrage der relevanten Daten von DimCustomer
SELECT 
  c.customerkey AS 'Kundenschl�ssel',
  c.firstname AS Vorname,
  c.lastname AS Nachname, 
  c.firstname + ' ' + lastname AS Vollname,   -- Vor- und Nachname kombiniert
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Geschlecht,
  c.datefirstpurchase AS DatumErsterKauf,
  g.city AS Stadt                             -- Joined in Stadt (des Kunden) von Geography Tabelle
FROM 
  DimCustomer as c
  LEFT JOIN dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Liste nach Kundenschl�ssel geordnet


-- Abfrage der relevanten Daten von DimDate 
SELECT [DateKey] AS Datumschl�ssel,
       [FullDateAlternateKey] AS Datum,
 [EnglishDayNameOfWeek] AS Tag,
 [WeekNumberOfYear] AS WochenNr,
 [EnglishMonthName] AS Monat,
 LEFT([EnglishMonthName], 3) AS Monatkurz, 
 [MonthNumberOfYear] AS MonatNr,
 [CalendarQuarter] AS Quartal,
 [CalendarYear] AS Jahr
 
FROM [DimDate]
WHERE CalendarYear >= 2022


-- Abfrage der relevanten Daten von DimProduct 
SELECT 
  p.[ProductKey] AS Produktschl�ssel, 
  p.[ProductAlternateKey] AS Produktschl�ssel2, 
  p.[EnglishProductName] AS Produktname, 
  ps.EnglishProductSubcategoryName AS Subkategorie, -- Joined in von Sub Category Tabelle
  pc.EnglishProductCategoryName AS Produktkategorie, -- Joined in von Category Tabelle
  p.[Color] AS Produktfarbe, 
  p.[Size] AS Produktgr��e, 
  p.[ProductLine] AS Produktlinie, 
  p.[ModelName] AS Produktmodellname, 
  p.[EnglishDescription] AS Produktbeschreibung, 
  ISNULL (p.Status, 'Outdated') AS Produktstatus 
FROM 
  [DimProduct] as p
  LEFT JOIN DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey asc


-- Abfrage der relevanten Daten von FactInternetSales
SELECT 
      [ProductKey] AS Produktschl�ssel,
      [OrderDateKey] AS Bestelldatumschl�ssel,
      [DueDateKey] AS F�lligkeitsdatumschl�ssel,
      [ShipDateKey] AS Versanddatumschl�ssel,
      [CustomerKey]AS Kundenschl�ssel,
      [SalesOrderNumber]AS Bestellnummer,
      [SalesAmount] AS Umsatz
FROM  [FactInternetSales]
WHERE 
 LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Immer nur 2 Jahre seit Kauf
ORDER BY 
 OrderDateKey ASC
