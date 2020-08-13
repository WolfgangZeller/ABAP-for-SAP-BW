# MOVE-CORRESPONDING vs. CORRESPONDING FIELDS OF TABLE
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

## MOVE-CORRESPONDING
Feldinhalt der DB-Tabelle wird *zeilenweise* in die interne Tabelle übertragen. In wa_itab1 stehen die Werte einer DB-Zeile. 
Mit MOVE-DORRESPONDING werden anschließend nur die namensgleichen Felder von wa_itab1 in wa_itab2 übertragen.
```abap
SELECT * FROM dbtab INTO DATA(wa_itab1).
  MOVE-CORRESPONDING wa_itab1 TO wa_itab2.
  APPEND wa_itab2 TO itab1.
ENDSELECT.
```

## CORRESPONDING FIELDS OF TABLE
Feldinhalt der DB-Tabelle wird *blockweise* in die interne Tabelle übertragen. Das ist die schnellste Möglichkeit eine interne Tabelle zu füllen.
Nur namensgleiche Felder werden von der DB-Tabelle in die interne Tabelle übertragen.
```abap
SELECT * FROM dbtab 
  INTO CORRESPONDING FIELDS OF TABLE itab.
```
