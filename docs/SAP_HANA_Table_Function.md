# SAP HANA - Tabellenfunktionen
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

### Basic Syntax einer Tabellenfunktion - SQL
```sql
CREATE FUNCTION <function name> (<list of input parameters with type>)
RETURNS TABLE [table type|(<list of table column definitions>)]
AS
BEGIN
<function body>
RETURN <expression to set return table>
END;
```

### Basic Syntax einer Tabellenfunktion - SQLScript
```abap
CREATE FUNCTION <function name> (<list of input parameters with type>)
RETURNS TABLE [table type|(<list of table column definitions>)]
AS
BEGIN
<function body>
RETURN <expression to set return table>
END;
```

```sql
CREATE FUNCTION Convert_Hours (im_to VARCHAR(1) )
RETURNS TABLE ( PNr			NVARCHAR(3),
				        Name		NVARCHAR(20),
				        Overtime	DEC(5,2))
AS
BEGIN
 RETURN SELECT PNr,
				       Convert_Hours(Overtime, :im_to) AS Overtime
		    FROM Official;
END;
```

```abap
CREATE FUNCTION Convert_Hours (im_to VARCHAR(1) )
RETURNS TABLE ( PNr			NVARCHAR(3),
				        Name		NVARCHAR(20),
				        Overtime	DEC(5,2))
AS
BEGIN
 RETURN SELECT PNr,
				       Convert_Hours(Overtime, :im_to) AS Overtime
		    FROM Official;
END;
```
