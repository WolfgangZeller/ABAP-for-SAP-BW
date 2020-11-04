# ABAP OO
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

## Theorie

### Begriffsbestimmung
**Klasse:** Bauplan der Objekte

**Objekt:** Objekte sind Instanzen von Klassen. Jedes Objekt hat eine eindeutige Identität und eigene Attribute.

**Objektreferenzen:** Der Zugriff eines ABAP-Programms auf Objekte erfolgt ausschließlich über Objektreferenzen (= Zeiger auf Objekte)

**Instanz:** Ein Exemplar eines Objekts

![Instances](img/Instances.png)

**Vererbung:** Objekte können auf mehrere Klassen aufgeteilt werden (Vererbung auf Ober-/Unterklassen, MVC-Prinzip)

**Selbstreferenz me->:**

**Sichtbarkeitsbereich:**

| public | alle Komponenten sind aus allen Programmen und Klassen aufrufbar und sichtbar |
| private | Komponenten sind nur innerhalb der eigenen Klasse aufrufbar und sichtbar |
| protected | Komponenten sind nur innerhalb der eigenen Klasse und in der Hierarchie nach unten aufrufbar und sichtbar |


| **Sichtbarkeitsbereich:** | Eigenschaft |
| :--- | :--- |
