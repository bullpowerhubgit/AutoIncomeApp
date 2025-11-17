
#!/bin/bash

# AutoIncome Hub - Automatisches Setup Script
# Einfach hochladen und ausführen!

set -e

echo "🚀 AutoIncome Hub Installation startet..."
echo "=========================================="

# Prüfe, ob Node.js installiert ist
if ! command -v node >/dev/null 2>&1; then
	echo "❌ Node.js ist nicht installiert! Bitte installiere Node.js und versuche es erneut."
	exit 1
fi

# Prüfe, ob npm installiert ist
if ! command -v npm >/dev/null 2>&1; then
	echo "❌ npm ist nicht installiert! Bitte installiere npm und versuche es erneut."
	exit 1
fi

# Prüfe, ob pm2 installiert ist, sonst installieren
if ! command -v pm2 >/dev/null 2>&1; then
	echo "🔧 PM2 wird installiert..."
	npm install -g pm2
fi

# Gehe ins Verzeichnis
if [ ! -d "/var/www/autoincome-hub" ]; then
	echo "❌ Verzeichnis /var/www/autoincome-hub existiert nicht! Bitte prüfe den Pfad."
	exit 1
fi
cd /var/www/autoincome-hub

# 1. NPM Dependencies installieren
echo "📦 Installiere Dependencies..."
npm install

# 2. Server starten mit PM2
echo "🎬 Starte Server mit PM2..."
pm2 start server.js --name "autoincome-hub"

# 3. PM2 für Auto-Start konfigurieren
echo "⚙️  Konfiguriere Auto-Start..."
pm2 startup
pm2 save

# 4. Status prüfen
echo "✅ Status prüfen..."
pm2 list

echo ""
echo "=========================================="

echo "🎉 Installation FERTIG!"
echo "=========================================="
echo ""
echo "ℹ️  Dein Server läuft unter:"
echo "   📍 http://aiitec.de/api/health"
echo ""
echo "ℹ️  Dashboard erreichbar unter:"
echo "   📊 http://aiitec.de/api/dashboard"
echo ""
echo "ℹ️  YouTube Test-Endpoint:"
echo "   🎥 http://aiitec.de/api/youtube/channel/CHANNEL_ID"
echo ""
echo "👉 Du kannst den Status jederzeit mit 'pm2 list' prüfen."
echo "👉 Logs anzeigen: 'pm2 logs autoincome-hub'"
echo "👉 Server neu starten: 'pm2 restart autoincome-hub'"
