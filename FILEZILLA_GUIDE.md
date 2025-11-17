

# 🎯 FileZilla Installation Guide – So einfach geht's


## Voraussetzungen

- **FileZilla** ist installiert ([Download hier](https://filezilla-project.org/))
- Zugangsdaten (Host, Benutzername, Passwort) für den Server vorhanden
- Grundkenntnisse im Umgang mit FTP


## SCHRITT 1: Setup-Script hochladen

```text
1. FileZilla öffnen
2. Mit dem Server aiitec.de verbinden (Host, Benutzername, Passwort eingeben und auf „Verbinden“ klicken)
3. Navigiere im rechten Fenster zu: /var/www/autoincome-hub/
4. Ziehe die Datei "setup.sh" von deinem Computer (linkes Fenster) in diesen Ordner (rechtes Fenster)
```


## SCHRITT 2: Das Script ausführbar machen

```text
1. Im rechten Fenster auf "setup.sh" RECHTSKLICKEN
2. "Dateiattribute" oder "Properties" auswählen
3. Berechtigungen setzen:
   - Owner: Read ✓, Write ✓, Execute ✓
   - Group: Read ✓, Execute ✓
   - Public: Read ✓, Execute ✓
   (Numerisch: 755)
4. Mit OK bestätigen
```


## SCHRITT 3: Die Installation starten

```text
Option A: Browser (empfohlen)
- Öffne deinen Browser und gehe zu: [http://aiitec.de/var/www/autoincome-hub/setup.sh](http://aiitec.de/var/www/autoincome-hub/setup.sh)
- Die Installation startet automatisch.

Option B: Terminal (falls verfügbar)
- In FileZilla unten auf "Terminal" klicken (oder per SSH verbinden)
- Eingeben: bash /var/www/autoincome-hub/setup.sh
- Mit Enter bestätigen
```


## ✅ Fertig

Wenn alles geklappt hat, siehst du im Terminal oder im Browser:

```text
🚀 AutoIncome Hub Installation startet...
🎬 Starte Server mit PM2...
🎉 Installation FERTIG!

Dein Server läuft unter:
[http://aiitec.de/api/health](http://aiitec.de/api/health)
```

---


## 🧪 Testen

1. Öffne deinen Browser
2. Gehe zu: [http://aiitec.de/api/health](http://aiitec.de/api/health)
3. Du siehst eine JSON-Ausgabe mit `"success": true`?
   → **ALLES FUNKTIONIERT!** 🚀



## 🛠️ Fehlerbehebung (Troubleshooting)

- **Dateien fehlen?** Prüfe, ob "setup.sh" im Ordner /var/www/autoincome-hub/ liegt.
- **Berechtigungen falsch?** Stelle sicher, dass die Datei die Rechte 755 hat (siehe Schritt 2).
- **Node.js nicht installiert?** Prüfe mit `node --version` im Terminal, ob Node.js installiert ist. Falls nicht, [Node.js installieren](https://nodejs.org/).
- **Installation startet nicht?**
      - Prüfe, ob du die richtige URL im Browser eingegeben hast.
      - Versuche, das Script direkt im Terminal auszuführen (siehe Schritt 3, Option B).
- **Immer noch Probleme?**
      - Server-Logfiles prüfen (z.B. /var/log/)
      - Support kontaktieren: [support@aiitec.de](mailto:support@aiitec.de)

---

Viel Erfolg! 🚀

