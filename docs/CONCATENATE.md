# CONCATENATE und Verknüpfungsoperator &&
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

### Mit CONCATENATE-Befehl
```abap
lv1 = 'ABAP'.
lv2 = '2020'.

CONCATENATE lv1 lv2 INTO lv3 SEPARATED BY SPACE.

WRITE: lv3.
"-- Output: 'ABAP 2020'
```

Wenn zwischen jeder Einzelkomponente ein Leerzeichen eingefügt werden soll, muss der Zusatz `SEPARATED BY SPACE`verwendet werden. Statt einem Leerzeichen können mit `SEPARATED BY ';'`oder `SEPARATED BY '|'`ein Trennzeichen eingefügt werden.

### Mit Verkettungsoperator &&
```abap
lv1 = 'ABAP'.
lv2 = '2020'.

lv3 = lv1 && ' ' && lv2.

WRITE: lv3.
"-- Output: 'ABAP 2020'
```

#### Verkettungsoperator && bei `SELECT`-Anweisung
```abap
SELECT dbtab1~material
  dbtab2~datum
  dbtab1~plz && ' ' && dbtab2~ort AS adresse
INTO ...
```
