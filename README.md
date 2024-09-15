Dieses Power BI Projekt (Datei in "Personal-Project") zeigt meine Auswertung/Analyse des Unternehmens bzw. dessen Sample Datenbank "AdventureWorks" von Microsoft. (https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms)

Die Grundüberlegung war es, einen Plan-Ist Vergleich mit einem fiktiven Budget (Excel Liste mit Monatsumsätzen) für die Jahre 2022 und 2023 sowie den Jänner 2024 (letzter Monat in der Datenbank) zu erstellen.

Der erste Schritt war es, mir entsprechende "Business Questions" auszudenken. In diesem Fall habe ich diese Fragen eher simpel und allgemein gehalten: 

1. Wie entwicklet sich das Unternehmen im Vergleich zum gesetzten Budget? 
2. Welche Kunden sind die größten Abnehmer?
3. Welche Produkte erzielen die höchsten Umsätze?

Um diese Fragen beantworten zu könnnen, nutzte ich MS SQL Server um die unterschiedlichen, für diese Analyse, relevanten Daten aufzubereiten und in einem ersten Schritt zu säubern. (die verwendeten Codes liegen separat bei)

Im nächsten Schritt lud ich die Daten in Power BI wo ich dann per Power Query die letzten Säuberungen durchführte und das Datenmodell erstellte. 
Anschließend erstellte ich die notwendigen Measures (Berechnungen): Budgetsumme, Umsatzsumme, Profitsumme sowie das prozentuelle Verhältnis von Umsatz zu Budget.
Nun konnte ich die entsprechenden Visualisierungen erstellen. Hierbei verwendete ich Balkendiagramme
 
Nun konnte ich die vorhergehenden Fragen beantworten:

1. Im Jahr befand man sich deutlich unter den budgetierten Umsatz (- 28%).
   2023 konnten die Planwerte um rd. 7 % überschritten werden.
   Für 2024 wurden erst zu wenige Werte in die Datenbank eingespielt, was einen Vergleich nicht zielführend macht, weshalb 2024 auch herausgefiltert wird.
   
2. Für eventuelle Loyalitätsprogramme oder andere Kundenanalysen konnte Jordan Turner aus Roubaix als Kunde mit dem höchsten Umsatz (15.999 €) identifiziert werden.
   
3. 2023 werden mit der Produktgruppe "Bikes" 94% der Umsätze generiert. 2022 waren es sogar noch 100% der Umsätze. Dies könnte auch auf eine Erweiterung des Produktportfolios im Jahr 2023 hinweisen.
   Besonders beliebt sind die Bikes Mountain-200 Black 46, 42 und 38 sowie Silver 46 und 42. Die umsatzschwächsten Produkte sind die "Half-Finger Gloves".
   Aus diesem Vergleich alleine lässt sich jedoch keine Aussage darüber treffen, ob das Produkt weiterhin angeboten werden sollte.
