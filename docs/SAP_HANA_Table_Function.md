# SAP HANA - Tabellenfunktionen
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

### Basic Syntax einer Tabellenfunktion - SQL
```sql
FUNCTION "get_po_avg_by_partnerid_tf" (
	       in im_partnerid nvarchar(10), 
	       in im_items table(purchaseorderid nvarchar(10), 
	                        productid nvarchar(20),
	                        currency nvarchar(5), 
	                        grossamount decimal(15,2), 
	                        quantity decimal(13,3)))
       RETURNS table( partnerid nvarchar(10), 
                      avgitemprice decimal(32,16), 
                      avgorderquantity decimal(32,16), 
                      currency nvarchar(5)) 
       LANGUAGE SQLSCRIPT 
       SQL SECURITY INVOKER AS 
BEGIN 
```


```sql
"-- 
CREATE FUNCTION Convert_Hours (im_to VARCHAR(1) )
RETURNS TABLE ( PNr	 NVARCHAR(3),
		Name	 NVARCHAR(20),
		Overtime DEC(5,2))
AS BEGIN
 RETURN SELECT PNr, Name,
		Convert_Hours(Overtime, :im_to) AS Overtime
	FROM Official;
END;
```
