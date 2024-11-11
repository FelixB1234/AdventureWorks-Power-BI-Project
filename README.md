Dieses Power BI-Projekt (die Datei im Ordner "Personal-Project" kann heruntergeladen werden) zeigt meine Auswertung/Analyse des Unternehmens bzw. dessen Beispieldatenbank "AdventureWorks" von Microsoft. (https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms)

Die Grundüberlegung war, einen Plan-Ist-Vergleich mit einem fiktiven Budget (eine Excel-Liste mit Monatsumsätzen) für die Jahre 2022 und 2023. Das Jahr 2024 wurde weggelassen, da zum Zeitpunkt der Erstellung nur der Jänner 2024 in der Datenbank eingetragen war.

Der erste Schritt bestand darin, entsprechende "Business Questions" zu formulieren. In diesem Fall habe ich die Fragen eher simpel und allgemein gehalten:

1. Wie entwickelt sich das Unternehmen im Vergleich zum gesetzten Budget?
2. Welcher Kunde ist der/die größte Abnehmer:in?
3. Welche Produkte erzielen die höchsten Umsätze?

Um diese Fragen beantworten zu können und um die unterschiedlichen, für diese Analyse relevanten Daten aufzubereiten und in einem ersten Schritt zu bereinigen, nutzte ich den Microsoft SQL Server.

Im nächsten Schritt lud ich die Daten in Power BI, wo ich dann per Power Query die letzten Bereinigungen durchführte und das Datenmodell erstellte. Anschließend erstellte ich die notwendigen Measures (Berechnungen): Budgetsumme, Umsatzsumme, Profitsumme sowie das prozentuale Verhältnis von Umsatz zu Budget. Nun konnte ich die entsprechenden Visualisierungen erstellen. Hierbei verwendete ich Liniendiagramme zum Vergleich von Budget- und Umsatzdaten über einen Zeitraum, Balkendiagramme zur Gegenüberstellung unterschiedlicher Produktkategorien/Kunden, Matrizen zur genauen Aufschlüsselung nach Produkt/Kunde und Monat sowie Kreisdiagramme und Landkarten für zusätzliche Informationen. Weiters fügte ich Filter für unterschiedliche Bestelldetails sowie Jahres- und Monatsdaten hinzu.

Nun konnte ich die zuvor gestellten Fragen beantworten:

1. Im Jahr 2022 lag der Umsatz deutlich unter dem budgetierten Wert (-23 %). 2023 konnten die Planwerte um ca. 26 % überschritten werden. Kumuliert liegt man für den Beobachtungszeitraum 2022 und 2023 deutlich über dem Planwert (+13%) 

2. Für eventuelle Loyalitätsprogramme oder andere Kundenanalysen konnte Jordan Turner aus Roubaix als Kunde mit dem höchsten Umsatz (rd. 16.000 €) identifiziert werden.

3. Im Jahr 2023 wurden 94 % der Umsätze mit der Produktgruppe "Bikes" generiert, während es 2022 noch rd. 100 % waren. Dies könnte auf eine Erweiterung des Produktportfolios im Jahr 2023 hindeuten. Besonders beliebt waren die Bikes Mountain-200 Black in den Größen 46, 42 und 38 sowie Silver in den Größen 46 und 42. Zu den umsatzschwächsten Produkten zählen die "Half-Finger Gloves". Aus diesem Vergleich allein lässt sich jedoch keine Aussage darüber treffen, ob das Produkt weiterhin angeboten werden sollte.
