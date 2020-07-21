# Führende Nullen hinzufügen
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

### Variante 1 (UNPACK)
```abap
"-- UNPACK nur geeignet bei numerischen Werten

DATA lv_source TYPE char3 VALUE '123'. " 3-stelliger Wert
DATA lv_target TYPE char5. " 5-stelliger Wert
 
UNPACK lv_source TO lv_target.
```
[ABAP-Schlüsselwortdokumentation -> UNPACK](https://help.sap.com/doc/abapdocu_750_index_htm/7.50/de-DE/abapunpack.htm)



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
