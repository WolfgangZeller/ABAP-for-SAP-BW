# SAP HANA - Skalar-Funktionen
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

### Eigenschaften einer Skalar-Funktion
- Input-Parameter: einen oder mehrere Primitive SQL-Typen
- Output-Parameter: einen oder mehrere skalare Werte
- Aufruf der Funktion im *SELECT* Statement als *FROM* Klausel
- Read only - es werden keinerlei SQL Statements unterstützt

### Basic Syntax einer Skalar-Funktion
Wie man eine Skalar-Funktion erstellt, wird im folgenden Beispiel gezeigt
```sql
 CREATE FUNCTION func_name (im_par1 DOUBLE,  im_par2 DOUBLE)
 RETURNS result_add DOUBLE, result_mul DOUBLE 
 LANGUAGE SQLSCRIPT 
 AS BEGIN
    result_add = :x + :y;
    result_mul = :y * :y;
 END;
```

Wie man eine Skalar-Funktion aufruft, wird im folgenden Beispiel gezeigt
```sql
SELECT * FROM func_name(10,33, 25,00);
```

### Link zum SAP Help Portal
[SAP Help Portal | SAP HANA SQLScript Reference | 2.0 SPS 03 | CREATE FUNCTION](https://help.sap.com/viewer/de2486ee947e43e684d39702027f8a94/2.0.03/en-US/2fc6d7beebd14c579457092e91519082.html)
