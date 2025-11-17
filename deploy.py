#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# AutoIncome Hub - Deploy Script (Alternative)
# Falls Bash nicht funktioniert

import os
import subprocess
import sys

def run_command(cmd):
    """Führe Command aus"""
    print(f"▶️  Ausführen: {cmd}")
    try:
        result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
        if result.returncode == 0:
            print(f"✅ OK: {result.stdout}")
            return True
        else:
            print(f"❌ Fehler: {result.stderr}")
            return False
    except Exception as e:
        print(f"❌ Fehler: {e}")
        return False

def main():
    print("\n" + "="*60)
    print("🚀 AutoIncome Hub - Python Deploy Script")
    print("="*60 + "\n")

    # Verzeichnis wechseln (cross-platform)
    if os.name == 'nt':
        project_dir = os.path.expanduser(r"C:\Users\bullp\Downloads\autoincome-hub")
    else:
        project_dir = "/var/www/autoincome-hub"
    if not os.path.isdir(project_dir):
        print(f"❌ Fehler: Verzeichnis nicht gefunden: {project_dir}")
        return False
    os.chdir(project_dir)
    print(f"📍 Verzeichnis: {project_dir}\n")

    # 1. NPM Install
    print("📦 Schritt 1: NPM Dependencies...")
    if not run_command("npm install"):
        print("⚠️  NPM Install fehlgeschlagen")
        return False

    # 2. PM2 Start
    print("\n🎬 Schritt 2: Server starten...")
    if not run_command("pm2 start server.js --name 'autoincome-hub'"):
        print("⚠️  PM2 Start fehlgeschlagen")
        return False

    # 3. PM2 Startup
    print("\n⚙️  Schritt 3: Auto-Start konfigurieren...")
    run_command("pm2 startup")
    run_command("pm2 save")

    # 4. Status
    print("\n✅ Status überprüfen...")
    run_command("pm2 list")

    print("\n" + "="*60)
    print("🎉 Installation COMPLETE!")
    print("="*60)
    print("\n📍 Server läuft unter: http://aiitec.de/api/health\n")

    return True

if __name__ == "__main__":
    success = main()
    sys.exit(0 if success else 1)
