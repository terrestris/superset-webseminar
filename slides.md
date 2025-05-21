---
# You can also start simply with 'default'
theme: default
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
# background: /superset-logo.svg
# some information about your slides (markdown enabled)
title: Apache Superset Webseminar
# apply unocss classes to the current slide
class: text-center superset-logo-start
# https://sli.dev/features/drawing
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
transition: slide-left
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
# open graph
# seoMeta:
#  ogImage: https://cover.sli.dev
hideInToc: true
layout: start
---

![Superset Web-Seminar Logo](/superset-logo.svg)

# Apache Superset
### terrestris GmbH & Co. KG
### 22. Mai 2025

---
hideInToc: true
layout: main
---

# Was erwartet Sie?

<Toc minDepth="1" maxDepth="2" />

---
layout: two-cols-header
---

::title::
# 🗣️ Über terrestris

::left::

- Open Source GIS aus Bonn seit > 20 Jahren
- 24 MitarbeiterInnen und 2 Geschäftsführer
- Aufbau von Geodateninfrastrukturen und WebGIS
  - Modular mit etablierten OS-Komponenten
  - Fachsysteme (z.B. Gewässerschutz, Telekommunikation)
  - Berechtigungsmanagement
- Aktiv auf FOSSGIS und FOSS4G
- Aktive Mitarbeit in vielen OS GIS Projekten
- Superset, Masterportal, MapProxy, GeoServer, QGIS, Postgres, SHOGun

::right::

![terrestris](/terrestris_spanbroek.png)

<div class="text-center py-2">

  📫 info@terrestris.de

  🔗 linkedin: [terrestris-gmbh-co-kg](terrestris-gmbh-co-kg)

  🎨 [github/terrestris.de](https://github.com/terrestris)

</div>

---

<!-- ::title:: -->
# 💡 Business Intelligence

<img class="header-logo py-2" src="/terrestris-logo-normal.svg" />

<!-- ::left:: -->

- Verfahren und Prozesse zur systematischen Analyse des eigenen Unternehmens
- Umfasst Sammlung, Auswertung und Darstellung von Daten
- Ziel: Gewinnung von Erkenntnissen zur Unterstützung von Managemententscheidungen

<small>*Quelle: https://de.wikipedia.org/wiki/Business_Intelligence*</small>

<!-- ::right:: -->

![BI concept](/bi-concept.svg)

---
layout: two-cols-header
---

::title::
# <div class="superset-header"><img src="/superset-logo.svg" /><span>Apache Superset</span></div>

::left::

## Übersicht

- Open-Source Data Exploration Platform
- Apache Software Foundation
- Große und aktive Community
- Lizenz: Apache-2.0
- Integrierbar in bestehende Stacks

<img class="dashboard-image" src="/dashboard-screenshot2.png"/>

::right::

## Features

- Low-Code Platform
- Interaktive Dashboards
- Breite Palette an Visualisierungen
- Dashboard- und Cross-Filter
- Automatische Datenaktualisierung
- Verknüpfung mit existierenden Datenbanken

<img class="dashboard-image" src="/dashboard-screenshot.png" />

---
layout: two-cols-header
---

::title::
# 🚴 Szenario 1: Radverkehr

::left::
## Ausgangssituation

Amt für Verkehrsplanung möchte sich
einen Überblick über den Zustand des Verkehrsgeschehens entlang einer Hauptverkehrsachse
verschaffen. Ziel ist es mithilfe von Superset, datenbasiert Entscheidungen zu treffen,
die die Lebensqualität der Bürgerinnen und Bürger verbessern.

::right::
## Zielgruppe
Mitarbeitende aus der Verkehrsplanung

## Ziel

- Anteil von Rad-, Fußverkehr und ÖPNV erhöhen
- Unfallschwerpunkte identifizieren und entschärfen
- Luftqualität verbessern, insbesondere entlang von Hauptverkehrsachsen

---
layout: statement
hideInToc: true
---

# Live-Demo 🎮

### Disclaimer
Die gleich gezeigten Daten wurden selbst erzeugt,
und dienen lediglich Demonstrationszwecken!

Sie haben keinen Echtweltbezug.

---
layout: two-cols-header
---

::title::
# ⚡ Szenario 2: Energie

::left::
## Ausgangssituation
Mitarbeiter/in in einem Planungs- und Betriebsbüro ist verantwortlich für
das Monitoring und die Analyse der Windkraftanlagen, die das Unternehmen
betreibt bzw. betreut. Dazu gehören Anlagen, die bereits in Betrieb sind,
aber auch die Planung und der Bau neuer Anlagen. Ein Dashboard soll hier
einen Überblick schaffen.

::right::
## Zielgruppe
Angestellte eines Planungs- und Betriebsbüros für Windkraftanlagen

## Ziel
- Laufendes Monitoring und Analyse von Anlagen
- Effiziente Überwachung der Anlagen
- Erkennen von Ausbaupotenzialen
- Überwachung Planungsfortschritt

---
layout: statement
hideInToc: true
---

# Live-Demo 🎮

### Disclaimer
Die gleich gezeigten Daten wurden selbst erzeugt,
und dienen lediglich Demonstrationszwecken!

Sie haben keinen Echtweltbezug.

---
layout: two-cols-header
---

::title::
# 🔮 Aktuelle und zukünftige Entwicklungen

::left::

## Bereits umgesetzt
- Cartodiagram Plugin
- Thematic Map Plugin
- Unterstütztung von Projektionen

<br />

<hr />

<br />

## In Entwicklung

- WFS als Datenquelle
- Cross-Filter für Thematic-Map Plugin
- Veröffentlichung bestehender Entwicklungen

::right::

## Weitere Ideen <sup class="fund-me-badge">Fund me!</sup>

- SensorThingsAPI als Datenquelle
- OGC API Features als Datenquelle
- OGC API Tiles als Hintergrundkarte
- Metriken bei Thematic Map Plugin
- Verbesserung UX bei Thematic Map <br/> Plugin

---
layout: statement
hideInToc: true
---

## Vielen Dank
## für das Interesse 🤝

<div class="py-4"><b>Fragen gerne jetzt stellen oder an:</b><br>
wagner@terrestris.de, suleiman@terrestris.de<br/>
</div>
<div class="logos-end">
  <img class="footer-logo py-2" src="/terrestris-logo-normal.svg" />
</div>
