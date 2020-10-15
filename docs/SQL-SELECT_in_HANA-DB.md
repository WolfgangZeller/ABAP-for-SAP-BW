# SQL-`SELECT` in der HANA Datenbank
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

## `LIKE` vs. `=`
Bei dem `LIKE`-Operator kann ein Platzhalter (Wildcard) bei der Suche verwendet werden.
```sql
SELECT "name" FROM "HANA-Schema"."table" where "name" LIKE 'Berkshire%' LIMIT 1000
```

Bei der Verwendung des Operators `=` muss der exakte Feldwert angegeben werden, der gesucht werden soll. 
```sql
SELECT "name" FROM "HANA-Schema"."table" where "name" = 'Berkshire Hathaway' LIMIT 1000
```

Der Vergleichs-Operator `=` vergleicht bei *Nummern* und *Strings* immer den kompletten Feldwert. Der Operator `LIKE` vergleicht in einem *String* hingegen Buchstabe für Buchstabe.
