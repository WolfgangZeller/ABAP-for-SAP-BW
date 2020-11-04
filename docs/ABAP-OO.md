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

| **Sichtbarkeitsbereich:** | Eigenschaft |
| :--- | :--- |
| public | alle Komponenten sind aus allen Programmen und Klassen aufrufbar und sichtbar |
| private | Komponenten sind nur innerhalb der eigenen Klasse aufrufbar und sichtbar |
| protected | Komponenten sind nur innerhalb der eigenen Klasse und in der Hierarchie nach unten aufrufbar und sichtbar |

**Instanz vs. statisch**: Instanzmethoden erst verwendbar, nachdem ein Objekt instanziiert wurde (`CREATE OBJECT`). Statische Methoden sind jederzeit verwendbar, existiert nur einmal für die Klasse und wird verwendet, wenn alle Objekte auf den gleichen Wert zugreifen müssen.

**Variable:** Sollten immer *private* oder *public-read-only* (schreibgeschützt) sein

**Konstante:** Können *private*, *public* und *protected* sein

| **Parameter:** | Art | Referenz- oder Wertübergabe¹ |
| :--- | :--- | :--- |
| IMPORT | Eingabe | Referenz und Wert |
| EXPORT | Ausgabe | Referenz und Wert|
| CHANGING | Ein-/Ausgabe | Referenz und Wert |
| RETURNING² | Rückgabe | Referenz und Wert |

*¹ bei Werteübergabe muss der Zusatz `VALUE()` bei der Definition angegeben werden*

*² eine Methode kann nur einen RETURNING-Parameter besitzen - zusätzliche Parameter sind nicht möglich*
