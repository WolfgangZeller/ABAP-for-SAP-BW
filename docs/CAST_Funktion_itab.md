# Inline Deklaration - Füge Spalte mit CAST-Funktion zu itab hinzu
---


```abap
"-- GET 'Anzahl Sitze' und 'Preis' aus sflight in itab. Zusätzlich füge ein benutzerdefiniertes Feld 'sum_profit' zur itab hinzu
SELECT seatsmax price 𝗖𝗔𝗦𝗧( ' ' AS CHAR ) AS sum_profit
  FROM sflight
  INTO TABLE @DATA(itab)
  WHERE carrid = 'LH'.
  
  "-- SET Werte für 'sum_profit' aus Berechnung 'Anzahl Sitze' * 'Preis' in itab
  LOOP AT itab ASSIGNING FIELD-SYMBOL(<itab>).
    <itab>-sum_profit = <itab>-seatsmax * <itab>-price
  ENDLOOP.
  ```

// CAST-Statement mit Markdown-Edior erstelt und mit Copy&Paste eingefügt.
