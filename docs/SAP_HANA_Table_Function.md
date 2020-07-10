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

```sql script
CREATE FUNCTION <function name> (<list of input parameters with type>)
RETURNS TABLE [table type|(<list of table column definitions>)]
AS
BEGIN
<function body>
RETURN <expression to set return table>
END;
```
