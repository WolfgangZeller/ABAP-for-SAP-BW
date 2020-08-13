# Interne Tabellen vergleichen

```abap
LOOP AT itab1.
  READ TABLE itab2 WITH KEY field1 = itab1-field1.
  IF sy-subrc = 0.
  ...
  ENDIF.
ENDLOOP.
```
