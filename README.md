# AutoIncome Hub 💰

Vollautomatisches Einkommenssystem mit Shopify-Integration, YouTube-Automation und KI-gestützter Content-Erstellung.

## 🌟 Features

### Dashboard
- Echtzeit-Übersicht über Einnahmen und Performance
- Interaktive Charts und Statistiken
- Live-Updates alle 30 Sekunden

### Shopify AutoPilot ⚙️
- Automatische Produktverwaltung
- Bestandsoptimierung
- Marketing-Automation
- Order-Processing

### 30-Tage-Zyklen 🔄
- Automatisierte Produktzyklen
- Content-Planung
- Performance-Tracking pro Zyklus

### Earnings Tracker 💰
- Detaillierte Einnahmenübersicht
- Mehrere Einnahmequellen (Shopify, YouTube, Affiliate)
- Export-Funktionen
- Trend-Analysen

### Settings & APIs 🔧
- Shopify API Integration
- YouTube Data API v3
- OpenAI GPT-4 Integration
- Firebase Admin SDK

## 🚀 Vercel Deployment

### Voraussetzungen
- GitHub Account
- Vercel Account (kostenlos unter [vercel.com](https://vercel.com))
- Node.js 16+ (für lokale Entwicklung)

### Deployment-Schritte

#### Option 1: Vercel CLI (Empfohlen)

1. **Vercel CLI installieren:**
   ```bash
   npm install -g vercel
   ```

2. **In das Projektverzeichnis wechseln:**
   ```bash
   cd AutoIncomeApp
   ```

3. **Deployment starten:**
   ```bash
   vercel
   ```

4. **Folgen Sie den Anweisungen:**
   - Login mit GitHub Account
   - Projekt verknüpfen
   - Deployment-Einstellungen bestätigen

5. **Produktions-Deployment:**
   ```bash
   vercel --prod
   ```

#### Option 2: Vercel Dashboard

1. **Bei Vercel anmelden:**
   - Gehen Sie zu [vercel.com](https://vercel.com)
   - Login mit GitHub

2. **Neues Projekt importieren:**
   - Klicken Sie auf "Add New..." → "Project"
   - Wählen Sie das Repository "bullpowerhubgit/AutoIncomeApp"
   - Klicken Sie auf "Import"

3. **Projekt konfigurieren:**
   - **Framework Preset:** Other
   - **Build Command:** (leer lassen oder `echo 'Static site'`)
   - **Output Directory:** `.` (root directory)
   - **Install Command:** `npm install` (optional)

4. **Deployment starten:**
   - Klicken Sie auf "Deploy"
   - Warten Sie auf erfolgreichen Build
   - Ihre App ist live unter `https://auto-income-app.vercel.app`

### Umgebungsvariablen (Optional)

Falls Sie API-Keys als Umgebungsvariablen verwenden möchten:

1. In Vercel Dashboard → Project Settings → Environment Variables
2. Fügen Sie folgende Variablen hinzu:
   - `SHOPIFY_ADMIN_KEY`
   - `YOUTUBE_API_KEY`
   - `OPENAI_API_KEY`

## 🏗️ Lokale Entwicklung

### Installation

```bash
# Repository klonen
git clone https://github.com/bullpowerhubgit/AutoIncomeApp.git
cd AutoIncomeApp

# Dependencies installieren
npm install
```

### Development Server

Da dies eine statische Website ist, können Sie einen einfachen HTTP-Server verwenden:

```bash
# Mit Python 3
python3 -m http.server 8000

# Mit Node.js http-server (npm install -g http-server)
http-server

# Mit VS Code Live Server Extension
# Rechtsklick auf index.html → "Open with Live Server"
```

Öffnen Sie dann `http://localhost:8000` in Ihrem Browser.

## 📁 Projekt-Struktur

```
AutoIncomeApp/
├── index.html              # Haupt-HTML-Datei (Dashboard UI)
├── app.js                  # JavaScript Anwendungslogik
├── style.css               # Haupt-Stylesheet
├── styles.css              # Zusätzliche Styles
├── package.json            # Node.js Konfiguration
├── vercel.json             # Vercel Deployment-Konfiguration
├── .gitignore              # Git Ignore-Regeln
├── README.md               # Diese Datei
├── deploy.py               # Python Deployment-Script
├── setup.sh                # Setup-Script
├── setup-ultra-simple.sh   # Vereinfachtes Setup-Script
├── FILEZILLA_GUIDE.md      # FTP-Deployment-Anleitung
└── ULTRA_SIMPLE_GUIDE.md   # Vereinfachte Anleitung
```

## 🛠️ Verwendete Technologien

### Frontend
- **HTML5** - Strukturierung
- **CSS3** - Styling mit modernem Design
- **Vanilla JavaScript** - Keine Frameworks für maximale Performance

### APIs & Services
- **Shopify Admin API** - E-Commerce Integration
- **YouTube Data API v3** - Video-Management
- **OpenAI GPT-4** - KI-gestützte Content-Erstellung
- **Firebase Admin SDK** - Backend-Services

### Deployment
- **Vercel** - Hosting & Continuous Deployment
- **Git/GitHub** - Versionskontrolle

### Libraries
- **Chart.js** - Datenvisualisierung
- **Express.js** - Backend-Server (optional)
- **CORS** - Cross-Origin Resource Sharing

## 🔐 Sicherheit

**⚠️ KRITISCHER SICHERHEITSHINWEIS:**

Die aktuelle Version enthält hartcodierte API-Keys im Frontend-Code (app.js). Dies ist ein kritisches Sicherheitsrisiko und sollte **VOR** dem Produktions-Deployment behoben werden:

### Sofortige Maßnahmen erforderlich:

1. **API-Keys widerrufen und neu generieren:**
   - Shopify Admin API Key
   - YouTube Data API Key
   - OpenAI API Key

2. **Backend-Proxy implementieren:**
   ```javascript
   // Anstatt direkte API-Calls im Frontend:
   // fetch('https://api.shopify.com/...')
   
   // Verwenden Sie einen Backend-Proxy:
   fetch('/api/shopify/products') // Ihr Backend macht den API-Call
   ```

3. **Umgebungsvariablen verwenden:**
   - Speichern Sie API-Keys in Vercel Environment Variables
   - Zugriff nur über Backend/Server-Side Code
   - Niemals im Frontend-Code

### Empfohlene Architektur für Produktion:
- Frontend (Vercel): Statische HTML/CSS/JS ohne API-Keys
- Backend (Vercel Serverless Functions oder separater Server): API-Calls mit sicheren Keys
- Environment Variables: Sichere Speicherung aller Credentials

**Wichtig:** Die API-Keys im aktuellen Code sind Platzhalter für Entwicklungszwecke. Ersetzen Sie diese durch sichere Backend-Implementierung vor dem Live-Deployment!

## 📊 Features im Detail

### Dashboard
- **Gesamteinnahmen:** Aggregierte Ansicht aller Einnahmequellen
- **Aktive Produkte:** Anzahl der aktiven Shopify-Produkte
- **Aktive Kampagnen:** Laufende Marketing-Kampagnen
- **Conversion Rate:** Echtzeit-Conversion-Tracking

### Shopify AutoPilot
- Automatisches Produktmanagement
- Dynamische Preisanpassungen
- Bestandsoptimierung
- Automatisiertes Marketing

### Earnings Tracker
- Tägliche, wöchentliche, monatliche Ansichten
- Mehrere Einnahmequellen
- Export zu CSV/Excel
- Trend-Analysen und Prognosen

## 🤝 Beitragen

Contributions sind willkommen! Bitte erstellen Sie einen Pull Request oder öffnen Sie ein Issue.

## 📝 Lizenz

MIT License - siehe LICENSE Datei für Details

## 🌐 Links

- **Live-App:** https://auto-income-app.vercel.app
- **Repository:** https://github.com/bullpowerhubgit/AutoIncomeApp
- **Vercel Docs:** https://vercel.com/docs
- **Shopify API:** https://shopify.dev/docs/api/admin
- **YouTube API:** https://developers.google.com/youtube/v3

## 📧 Support

Bei Fragen oder Problemen:
- GitHub Issues: [Issues](https://github.com/bullpowerhubgit/AutoIncomeApp/issues)
- Website: [aiitec.de](https://aiitec.de)

---

**Version 1.0.0** | © 2025 aiitec.de
