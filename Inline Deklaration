# ABAP - Inline Deklaration DATA() und @DATA()
---
### Vorteile
- Verfügbar ab ABAP 7.40 (2012)
- Variablen müssen nicht mehr explizit deklariert werden - der Programmcode wird schlanker und lesbarer
- die Inline-Deklaration markiert die Stelle, an der die Variable das erste Mal verwendet wird
- es ist keine explizite Typisierung notwendig. Der Typ der Variable wird bei einer Zuweisung von dem Operanden übernommen.
- bei einer Loop-Anweisung oder einem Select-Statement passt sich die Struktur bzw. Tabelle automatisch an.

Hier ein Vergleich zwischen Inline und Up-Front Deklaration
```abap
"-- alte Deklaration (vor ABAP 7.40)
TYPES: BEGIN OF ts_table,
  ebeln TYPE ekpo-ebeln,
  ebelp TYPE ekpo-ebelp,
  statu TYPE ekpo-statu,
  netpr TYPE ekpo-netpr,
 END OF ts_table.

DATA: itab TYPE STANDARD TABLE OF ts_table,
      wa_itab TYPE ts_table.

SELECT ebeln ebelp statu netpr
  FROM db-table
  INTO CORRESPONDING FIELDS OF TABLE itab.
```  
```abap
"-- neue (Inline-)Deklaration
SELECT ebeln, ebelp, statu, netpr
  FROM db-table
  INTO TABLE @DATA(itab).
```

**Variablen einen Wert zuweisen**
```abap
DATA(lv_var) = 'Test'.
DATA(lv_var) = lv_var2.
```
**SELECT-Statement**
```abap
"-- INTO TABLE
SELECT ebeln, ebelp, statu, netpr
	FROM db-table
	INTO TABLE @DATA(itab).
	
"-- INTO FIELDS
SELECT SINGLE ebeln, ebelp, statu, netpr
  FROM db-table
  INTO (@DATA(lv_var1),
		@DATA(lv_var2))
  WHERE ebeln = @ls_struc-ebeln.
```
**LOOP-Anweisung**
```abap
"-- in Workarea
LOOP AT itab INTO DATA(wa).
...
ENDLOOP.

"-- mit Feldsymbol
LOOP AT itab ASSIGNING FIELD-SYMBOL(<fs>).
...
ENDLOOP.
```
**FIELD-SYMBOL**
```abap
ASSIGN itab->* TO FIELD-SYMBOL(<fs>).
```
**METHODEN-Aufruf**
```abap
class=>mehtode( ch_var1 = DATA(lv_var1)
	ch_var2 = DATA(lv_var2) ).
```
