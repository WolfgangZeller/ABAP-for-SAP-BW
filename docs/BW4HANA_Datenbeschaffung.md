# BW/4HANA - Datenbeschaffung


Im SAP BW/4HANA  2.0 SPS01 stehen folgende Typen von Quellsystemen zur Verfügung:
1. ODP-Quellsysteme
2. SAP-HANA-Quellsysteme
3. Big-Data-Quellsysteme
4. Flache Dateien

## 1. ODP-Quellsysteme
Das ODP-Framework (*Operational Data Provisioning*) stellt einen "Vermittler" zwischen Nicht-HANA-Quellsystemen und dem BW/4HANA-System dar. Als persistente Datenablage nutzt das ODP-Framework die ODQ (*Operational Data Queue*). Die Quellsysteme werden dabei Provider und die Zielsysteme als Consumer oder Subscriber bezeichnet.

Neben der Entkoppelung zwischen Quell- und Zielsystem bringt ODP noch einige interessante Funktionen mit:
- einmalige Extraktion der Quelldaten bei mehrfacher Verteilung an unterschiedliche Zielsystem ("extract once, deploy many")
- die ODQ vereinheitlicht den Datenaustausch, die Konfiguration und das Monitoring und bietet die Funktion der separat, konfigurierbaren Aufbewahrungsfristen der Quelldaten (Data Retention)
- PSA und InfoPackages werden teilweise obsolet, weil per DTP direkt von der ODQ in die InfoProvider geladen werden kann

![ODP Provider und Subscriber](img/BW4HANA - ODP.png)

## 2. SAP-HANA-Quellsysteme
Das SAP HANA-Quellsystem stellt den zentralen und einheitlichen Zugriff auf Quellen zur Verfügung, die über SAP HANA SDI (*Smart Data Integration*) oder SAP HANA SDA (*Smart Data Access*) bereitgestellt werden.


## 4. Flache Dateien
Die Daten der flachen Datei können von einer Workstation oder von einem Applikationsserver ins SAP BW∕4HANA übertragen werden.
