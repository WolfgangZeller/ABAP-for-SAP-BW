# Führende Nullen hinzufügen
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

### Variante 1 (UNPACK)
```abap
"-- UNPACK nur geeignet bei numerischen Werten

DATA lv_source TYPE char3 VALUE '123'. " 3-stellig
DATA lv_target TYPE char5. " 5-stellig
 
UNPACK lv_source TO lv_target.

"-- Output: '00123'
```
[ABAP-Schlüsselwortdokumentation -> UNPACK](https://help.sap.com/doc/abapdocu_750_index_htm/7.50/de-DE/abapunpack.htm)

### Variante 2 (SHIFT/OVERLAY)
```abap
"-- OVERLAY auch bei alpha-numerischen Werten geeignet
"-- Zeiger (Feldsymbol, Datenreferenz) können nicht verwendet werden

DATA lv_var TYPE char5 VALUE '123'. " 5-stellige Variable mit 3-stelligem Wert

SHIFT lv_var RIGHT DELETING TRAILING space.
OVERLAY lv_var WITH '00000'.

"-- Output: '00123'
```
[ABAP-Schlüsselwortdokumentation -> SHIFT](https://help.sap.com/doc/abapdocu_752_index_htm/7.52/de-DE/abapshift_deleting.htm)
