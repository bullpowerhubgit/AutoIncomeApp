#!/bin/bash

# 🚀 AutoIncome Hub - ULTRA SIMPLE Setup
# Nur die wichtigsten Befehle!

echo "🎬 Starte Server mit PM2..."

cd /var/www/autoincome-hub

# Nur PM2 starten (npm install skipped)
pm2 start server.js --name "autoincome-hub"

# Auto-start aktivieren
pm2 startup
pm2 save

# Status anzeigen
echo ""
echo "✅ FERTIG!"
echo "Server läuft unter:"
echo "http://aiitec.de/api/health"
