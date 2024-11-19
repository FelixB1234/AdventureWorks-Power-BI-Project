# AdventureWorks Datenanalyse
## Datenquelle
Die Datenbasis für dieses Projekt bildet die Beispieldatenbank AdventureWorks von Microsoft. Sie enthält fiktive Unternehmensdaten und kann für Analysezwecke genutzt werden. Zusätzlich wurde eine Excel-Liste mit Monatsbudgets für die Jahre 2022 und 2023 erstellt, um Plan-Ist-Vergleiche durchzuführen. Das Jahr 2024 wurde aufgrund begrenzter Verfügbarkeit von Daten (nur Januar 2024) nicht berücksichtigt.
[AdventureWorks-Datenbank](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms)

## Projektübersicht
Dieses Projekt zielt darauf ab, Geschäftsdaten aus der AdventureWorks-Datenbank zu analysieren, um Erkenntnisse über Umsatzentwicklung, Kunden und Produkte zu gewinnen. Der Fokus liegt auf einem Plan-Ist-Vergleich und der Beantwortung zentraler „Business Questions“.

## Aufgabenstellung
Die Analyse konzentriert sich auf folgende Fragen:

1. **Wie entwickelt sich der Umsatz im Vergleich zum Budget?**
2. **Wer ist die/der umsatzstärkste Kundin/Kunde?**
3. **Welche Produkte generieren die höchsten Umsätze?**

## Vorgehensweise

### Datenaufbereitung
Die relevanten Tabellen aus der AdventureWorks-Datenbank wurden mit SQL Server Management Studio (Microsoft SQL Server) für die Analyse vorbereitet. Anschließend wurden sie in Power BI importiert und per Power Query final bereinigt sowie das Datenmodell erstellt.

### Erstellung von Measures und Visualisierungen
Wichtige Berechnungen wie Umsatzsumme, Budgetsumme und deren prozentuale Abweichungen wurden erstellt. Zur Visualisierung der Ergebnisse kamen unter anderem Linien- bzw. Flächendiagramme (Umsatz- und Budgetentwicklung), Balkendiagramme (Produktkategorien und Kunden), Matrizen (Details nach Produkt/Kunde) und Kreisdiagramme zum Einsatz. Filter für Zeiträume und Bestelldetails ergänzen das Dashboard.

## Zusammenfassung der Ergebnisse

### 1.**Plan-Ist-Vergleich**

- Der Umsatz für 2022 und 2023 betrug insgesamt 22,2 Mio. € und lag damit 14,9 % (2,9 Mio. €) über dem budgetierten Wert von 19,3 Mio. €.
- 2022: Der Umsatz war 19 % unter dem Budget.
- 2023: Die Planwerte wurden um 35 % übertroffen.

### 2.**Umsatzstärkste Kund:innen**

- Jordan Turner erzielte mit 16.000 € Umsatz den höchsten Wert, gefolgt von Maurice Shan (12.900 €) und Janet Munoz (12.500 €).

### 3.**Produktanalyse**

- Bikes machten 2023 mit einem Umsatz von 15,4 Mio. € etwa 93,9 % des Gesamtumsatzes aus, 2022 und 2023 kumuliert sogar 95,5% (21,2 Mio. €).
- Die beliebtesten Produkte waren Mountain-200 Bikes in verschiedenen Farben und Größen, die jeweils über 1,3 Mio. € Umsatz generierten.
- Die Kategorie Accessories (z. B. Helmets und Tires and Tubes) trug mit 3 % zum Umsatz bei.

## Fazit
Die Analyse zeigt, dass AdventureWorks seine Budgetziele für den Betrachtungszeitraum insgesamt übertreffen konnte. Es dominieren Bikes als Hauptumsatzträger, was auf auf eine gut abgestimmte Produktstrategie hinweisen könnte. Identifizierte Spitzenkunden wie Jordan Turner bieten Ansatzpunkte für gezielte Kundenbindungsmaßnahmen. Produkte wie Bike Racks und Stands sollten genauer analysiert werden, da sie nur geringfügig zum Umsatz und zur Absatzmenge beitragen, vermutlich jedoch höhere Produktionskosten als beispielsweise Socken verursachen. Gleichzeitig ist zu berücksichtigen, dass es sich hierbei um wichtige Komplementärgüter handelt, weshalb eine Entscheidung über deren Beibehaltung nicht ausschließlich auf Basis von Umsatz- und Absatzdaten getroffen werden sollte.
