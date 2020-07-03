# DTP-Filterroutine
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

```abap
"-- DEKLARATION der DDIC-Struktur des DTP-Filters
DATA ls_range TYPE rssdlrange.

DATA(lv_var) = sy-datum - 1

CLEAR l_t_range[].

"-- SET Wert für ein Feld
  ls_range-iobjnm = '/BI0/0CALMONTH'.
  ls_range-fieldname = 'CALMONTH'.
  ls_range-sign      = 'I'.
  ls_range-option    = 'EQ'. 
  ls_range-low       = lv_var.

  APPEND ls_range TO l_t_range.
  ```
