# SAP BW - Expertenroutine
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

In der Expertenroutine einer Transformation kann man auf das SOURCE_PACKAGE zugreifen und das RESULT_PACKAGE manipulieren.
```abap
IF SOURCE_PACKAGE IS NOT INITIAL.
  SELECT * FROM dbtab
    INTO CORRESPONDING FIELDS OF TABLE itab
    FOR ALL ENTRIES IN SOURCE_PACKAGE
    WHERE field1 = SOURCE_PACKAGE-field1.
ENDIF.
```
