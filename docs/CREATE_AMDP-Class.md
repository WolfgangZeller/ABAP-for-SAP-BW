# Anlegen einer AMDP-Klasse und Aufrufen in einem ABAP Programm
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

## Theorie

> AMDP allows you to optimize your ABAP code (for ABAP on SAP HANA) by calling HANA database procedures from a global ABAP class.

*ABAP Managed Database Procedure* (AMDP) ist ein Framework für die Verwaltung und Aufruf von Datenbankprozeduren und -funktionen auf dem ABAP-Applikationsserver.
Diese Datenbankartefakte werden als AMDP-Prozedurimplementierung und AMDP-Funktionsimplementierung in einer AMDP-Methode innerhalb einer AMDP-Klasse implementiert.
Für die Implementierungs-Logik wird *SQLScript* verwendet.

Vor der ersten Verwendung legt die ABAP-Laufzeitumgebung die AMDP-Implementierungsartefakte auf der Datenbank an.

Im Gegensatz zu einer normalen OO-Klasse müssen bei einer AMDP-Klasse zwei Code-Bausteine eingefügt werden:
Das Interface `IF_AMDP_MARKER_HDB` für die HANA-Datenbank muss angegeben werden. Und bei der Methoden-Implementierung muss `BY DATABASE PROCEDURE(|FUNCTION) FOR HDB LANGUAGE SQLSCRIPT (|READ-ONLY)` angegeben werden.


## Praxis
### AMDP-Klasse im ADT anlegen
![AMDP-Klasse in ADT anlegen](img/Create AMDP Class.png)

Entsprechende Prozedur auf der Datenbank:
![AMDP-Klasse in ADT anlegen](img/Create AMDP Class.png)

### AMDP-Klasse in ABAP Programm aufrufen
![AMDP-Klasse in ABAP Programm aufrufen](img/Call AMDP Class in ABAP report2.png)

### Quellen
[AMDP | READ-ONLY](https://help.sap.com/doc/abapdocu_752_index_htm/7.52/de-de/abapmethods_amdp_options.htm#!ABAP_ADDITION_1@1@)
