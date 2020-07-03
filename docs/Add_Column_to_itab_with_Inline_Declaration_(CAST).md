# Inline Deklaration - Füge Spalte mit CAST-Funktion zu itab hinzu
---


```abap
"-- GET 'Anzahl Sitze' und 'Preis' aus sflight in itab. Zusätzlich füge ein benutzerdefiniertes Feld 'sum_profit' zur itab hinzu
SELECT seatsmax price CAST( ' ' AS CHAR ) AS sum_profit
  FROM sflight
  INTO TABLE @DATA(itab)
  WHERE carrid = 'LH'.
  
  "-- SET Werte für 'sum_profi' aus Berechnung 'Anzahl Sitze' * 'Preis' in die itab
  LOOP AT itab ASSIGNING FIELD-SYMBOL(<itab>).
    <itab>-sum_profit = <itab>-seatsmax * <itab>-price
  ENDLOOP.
  ```
