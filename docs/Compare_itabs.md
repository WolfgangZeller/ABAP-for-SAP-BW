# Interne Tabellen vergleichen
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)
```abap
LOOP AT itab1 TO FIELD-SYMBOL(<fs_itab1>).
  READ TABLE itab2 TO FIELD-SYMBOL(<fs_itab2>)
    WITH KEY field1 = <fs_itab1>-field1.
    
    IF sy-subrc = 0.
  ...
  ENDIF.
  
ENDLOOP.
```
