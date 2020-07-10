# SAP HANA - Tabellenfunktionen
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

### Basic Syntax einer Tabellenfunktion - SQL
Wie man eine einfache Tabellenfunktionen erstellt wird im folgenden Beispiel gezeigt
```sql
CREATE FUNCTION Func_name (
	im_par VARCHAR(1) )
RETURNS TABLE ( PNr	 NVARCHAR(3),
		Name	 NVARCHAR(20),
		Overtime DEC(5,2))
LANGUAGE SQLSCRIPT 
AS BEGIN
 RETURN SELECT PNr, Name,
	FROM Official;
END;
```
```sql
 CREATE FUNCTION scale (val INT)
 RETURNS TABLE (a INT, b INT) LANGUAGE SQLSCRIPT AS
 BEGIN
    RETURN SELECT a, :val * b AS  b FROM mytab;
 END;
```

###Link zum SAP Help Portal
[SAP Help Portal | SAP HANA SQLScript Reference | 2.0 SPS 03 | CREATE FUNCTION](https://help.sap.com/viewer/de2486ee947e43e684d39702027f8a94/2.0.03/en-US/2fc6d7beebd14c579457092e91519082.html)
