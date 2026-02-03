# ⚡ ULTRA SIMPLE - Nur PM2!

## Was ist PM2?
PM2 = Process Manager
→ Startet deinen Node.js Server
→ Und hält ihn am Laufen!

## Annahme:
✅ npm install ist SCHON gemacht
✅ Alle Dependencies sind installiert
✅ node_modules Folder existiert

## DANN:
```
pm2 start server.js --name "autoincome-hub"
pm2 startup
pm2 save
```

**Fertig!** ✨

## Testen:
```
http://aiitec.de/api/health
```

Wenn `"success": true` → **ALLES LÄUFT!** 🎉
