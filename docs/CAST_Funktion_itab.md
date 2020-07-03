# Inline Deklaration - Füge Spalte mit CAST-Funktion zu itab hinzu
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

```abap
"-- GET 'Anzahl Sitze' und 'Preis' aus sflight in itab. Zusätzlich füge ein benutzerdefiniertes Feld 'sum_profit' zur itab hinzu
SELECT seatsmax price CAST( ' ' AS CHAR ) AS sum_profit
  FROM sflight
  INTO TABLE @DATA(itab)
  WHERE carrid = 'LH'.
  
  "-- SET Werte für 'sum_profit' aus Berechnung 'Anzahl Sitze' * 'Preis' in itab
  LOOP AT itab ASSIGNING FIELD-SYMBOL(<itab>).
    <itab>-sum_profit = <itab>-seatsmax * <itab>-price
  ENDLOOP.
  ```

```ABAP
DATA object TYPE REF TO /clean/some_number_range.
object = NEW #( '/CLEAN/CXTGEN' )
...
DATA(object) = NEW /clean/some_number_range( '/CLEAN/CXTGEN' ).
...
DATA(object) = CAST /clean/number_range( NEW /clean/some_number_range( '/CLEAN/CXTGEN' ) ).
```
