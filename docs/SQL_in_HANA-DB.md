# SQL Console in der HANA Datenbank
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

## LIKE vs. =
```sql
SELECT "name" FROM "HANA-Schema"."table" where "name" LIKE 'Berkshire%' LIMIT 1000
```
