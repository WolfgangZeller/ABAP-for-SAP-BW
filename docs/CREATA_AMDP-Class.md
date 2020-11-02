# Anlegen einer AMDP-Klasse
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

## Schritt 1 - Neue ABAP Class im ADT anlegen
Rechtsklick auf entsprechendes *ABAP Packages->New->ABAP Class*

## Schritt 2 - Definition der Klasse
```abap
CLASS z_cl_amdp_demo1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .

    TYPES:
      BEGIN OF structure_exporting_itab,
        customid TYPE sbook-customid,
        bookid   TYPE sbook-bookid,
        carrid   TYPE sbook-carrid,
        fldate   TYPE sbook-fldate,
        name     TYPE scustom-name,
      END OF structure_exporting_itab,

      exporting_itab TYPE STANDARD TABLE OF structure_exporting_itab WITH EMPTY KEY.

    CLASS-METHODS:
     get_all_bookings_for_customer
      IMPORTING
        VALUE(im_mandt) TYPE sbook-mandt
      EXPORTING
        VALUE(ex_itab)  TYPE exporting_itab.
        
ENDCLASS.
```

## Schritt 3 - Implementierung der Methode
```abap
CLASS z_cl_amdp_demo1 IMPLEMENTATION.
  METHOD get_all_bookings_for_customer BY DATABASE PROCEDURE FOR HDB
  LANGUAGE SQLSCRIPT
  USING sbook scustom.
    ex_itab =
    SELECT sb.customid, sb.bookid, sb.carrid, sb.fldate, sc.name
    FROM sbook AS sb
    inner join scustom AS sc ON sb.customid = sc.id
    where sc.mandt = :im_mandt;
  ENDMETHOD.

ENDCLASS.
```

## Hinweise
- wird die AMDP-Methode später in einem ABAP Programm aufgerufen, muss in der **Definition** (Schritt 2) die AMDP-Methode als statische Methode mit `CLASS-METHOD` angegeben werden. Für die Verwendung als Instanz-Methode reicht die Anweisung `METHODS`.


*Nächste Schritte:*
LINK(Aufruf einer AMDP-Klasse aus ABAP Programm)
LINK(Anzeigen des Ergebnisses einer OO-Klasse im ADT)
