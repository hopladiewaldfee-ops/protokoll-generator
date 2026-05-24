# CLAUDE.md — Projekt MAMA

## Zweck dieses Repos

Dieses Repository enthält Arbeitsvorlagen und erzeugte Dokumente für strukturierte
Leistungsverzeichnisse (LV) im Bereich Baugeräte/Betriebsgeräte sowie den Protokoll-Generator.

---

## LV-Geräte-Workflow

### Wann anwenden
Immer wenn der Nutzer ein Leistungsverzeichnis, eine Leistungsbeschreibung oder eine
vergaberechtliche Spezifikation für ein Gerät (Radlader, Bagger, Dumper, etc.) erstellen will.

### Skills die zu verwenden sind
- **`leistungsverzeichnis`** — für die produktneutrale Spezifikation (Pflicht)
- **`docx`** — für die Word-Dokument-Erzeugung (Pflicht)

### Ausgabe-Struktur
Drei Word-Dokumente je Gerät, abgelegt in `LV-Geräte/<Gerätename>/`:

| Datei | Inhalt |
|-------|--------|
| `LB-<Gerät>.docx` | Leistungsbeschreibung nach Vorlage LB-Betriebsgerät |
| `Vergleich-<Gerät>.docx` | Wettbewerbsvergleich (Querformat, Farbcodierung) |
| `Preisspiegel-<Gerät>.docx` | Preisspiegel NEU + Gebraucht + Miete |

### Schritte (Details in `LV-Geräte/WORKFLOW.md`)
1. Geräteparameter aus Datenblatt/Web extrahieren
2. Wettbewerbsrecherche (≥ 3 Modelle, gleiche Gewichtsklasse)
3. Leistungsbeschreibung erstellen (Vorlage: `LV-Geräte/VORLAGE-LB-Betriebsgeraet.md`) — **PFLICHT**
4. Wettbewerbsvergleichstabelle erstellen
5. Preisspiegel erstellen

### PFLICHT-Regel: Wesentliche Merkmale (Anweisung 5)

**Bei JEDEM LV/LB-Dokument gilt zwingend:**

Unter dem Abschnitt `2.1 Wesentliche Merkmale` IMMER eine vollständige, nach Kriterien
sortierte Bullet-Aufzählung aller technisch relevanten Anforderungen einfügen.

Sortierreihenfolge der Kriterien (gerätespezifisch anpassen):
1. Bauart / Konstruktion
2. Antrieb / Motor / Leistung
3. Arbeitsbreite / Arbeitstiefe / Kapazität
4. Gewicht / Abmessungen
5. Anbau / Anschluss (Traktorklasse, Dreipunkt-Kat., Zapfwelle)
6. Hydraulik / Steuerung
7. Sicherheit / Normen (ROPS, FOPS, CE, DIN/EN)
8. Kabine / Bedienung (nur bei Fahrzeugen)
9. Zulassung / StVZO (wenn relevant)
10. Wartung / Service / Garantie
11. Zusatzausstattung / Anbaugeräte

Format: `•` (U+2022) als Bullet-Symbol, Spannweiten als `mind. X – max. Y [Einheit]`

Die Vorlage `LV-Geräte/VORLAGE-LB-Betriebsgeraet.md` ist **immer** zu verwenden.
Der `leistungsverzeichnis`-Skill ist **immer** zu aktivieren (auch wenn nicht explizit genannt).

### Vergaberechtliche Grundsätze
- Spannweiten so setzen, dass mindestens 3 Wettbewerber die Anforderungen erfüllen
- Alleinstellungsmerkmale nur mit Beschaffungsvermerk nach § 7 VOB/A / § 31 Abs. 6 VgV
- Keine produktspezifischen Bezeichnungen (Markennamen, Modellnummern) im LV-Text

---

## Protokoll-Generator

Die Datei `index.html` / `Protokoll-Generator.html` ist eine standalone HTML-App für
strukturierte Meeting-Protokolle. Keine externen Abhängigkeiten.
