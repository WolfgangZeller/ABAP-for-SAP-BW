# Führende Nullen hinzufügen
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

### Variante 1 (UNPACK)
```abap
"-- Source wird vom System immer in Typ p (Länge 16 ohne Nachkommastellen; gepackte Zahl) konvertiert und zeichenartig ausgegeben (Target)
"-- UNPACK nur geeignet bei numerischen Werten
UNPACK lv_source TO lv_target
```

GET 'Anzahl Sitze' und 'Preis' aus sflight in itab. Zusätzlich füge ein benutzerdefiniertes Feld 'sum_profit' zur itab hinzu
SELECT seatsmax price CAST( ' ' AS CHAR ) AS sum_profit
  FROM sflight
  INTO TABLE @DATA(itab)
  WHERE carrid = 'LH'.
  
  "-- SET Werte für 'sum_profit' aus Berechnung 'Anzahl Sitze' * 'Preis' in itab
  LOOP AT itab ASSIGNING FIELD-SYMBOL(<itab>).
    <itab>-sum_profit = <itab>-seatsmax * <itab>-price
  ENDLOOP.
  ```
