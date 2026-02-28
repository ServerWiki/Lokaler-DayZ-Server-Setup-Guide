# 🧟‍♂️ Einfache DayZ Server Einrichtung (ServerWiki.network Dev Tools)

Willkommen! Dieses Repository enthält alles, was du brauchst, um deinen eigenen lokalen DayZ Server zu starten. Du brauchst keine Vorkenntnisse. Folge einfach dieser Schritt-für-Schritt-Anleitung.

## Schritt 1: Den DayZ Server herunterladen
1. Öffne **Steam** auf deinem PC.
2. Gehe in deine **Bibliothek**.
3. Klicke oben links auf das Dropdown-Menü (wo normalerweise "Spiele" steht) und setze einen Haken bei **Werkzeuge** (Tools).
4. Suche nun in der Suchleiste nach **DayZ Server**.
5. Klicke auf Installieren. Der Standardpfad ist meistens `C:\Program Files (x86)\Steam\steamapps\common\DayZServer`. Belasse ihn am besten dabei.

## Schritt 2: Unsere Dateien in den Server-Ordner kopieren
Kopiere die folgenden Dateien aus diesem Repository direkt in deinen neu installierten DayZServer-Ordner:
* `settings.cmd` (Hier stellst du Mods und Servernamen ein)
* `Start.bat` (Das Startskript mit Map-Auswahl)
* `ServerWikiLogo.txt` (Unser Konsolen-Logo)
* `Cherno_serverDZ.cfg` (Konfiguration für Chernarus)
* `Enoch_serverDZ.cfg` (Konfiguration für Livonia/Enoch)
* `Sakhal_serverDZ.cfg` (Konfiguration für Sakhal)

Dein Server-Ordner sollte nun diese Dateien direkt neben der Datei `DayZServer_x64.exe` enthalten.

## Schritt 3: Mods installieren (Optional, aber empfohlen)
Wenn du Mods wie z.B. VPPAdminTools spielen möchtest:
1. Abonniere die Mods im **Steam Workshop** von DayZ (im normalen Spiel, nicht beim Server-Tool).
2. Öffne den Ordner deines normalen DayZ-Spiels (meist `C:\Program Files (x86)\Steam\steamapps\common\DayZ`).
3. Mache versteckte Ordner in Windows sichtbar (Ansicht -> Ausgeblendete Elemente).
4. Du siehst nun einen Ordner namens `!Workshop`. Öffne ihn.
5. Kopiere die Mod-Ordner (z. B. `@CF`, `@Dabs Framework`, `@VPPAdminTools`) in deinen **DayZServer-Ordner**.
6. **WICHTIG:** Öffne jeden kopierten Mod-Ordner, gehe in den Unterordner `Keys` und kopiere die `.bikey` Datei. Füge diese `.bikey` Datei in den Ordner `keys` deines **DayZServer-Ordners** ein. Ohne diesen Schritt lässt der Server keine Spieler mit Mods zu!

## Schritt 4: Den Server anpassen
1. **Mods und Servername:** Mache einen Rechtsklick auf die Datei `settings.cmd` und wähle **Bearbeiten** (oder öffne sie mit dem Editor). Hier trägst du deinen Servernamen ein und listest die Mods auf, die geladen werden sollen (z.B. `@CF;@VPPAdminTools`).
2. **Passwörter:** Öffne die Konfigurationsdatei der Map, die du spielen willst (z.B. `Cherno_serverDZ.cfg`), mit einem Texteditor. Hier kannst du ein Server-Passwort oder ein Admin-Passwort eintragen. Alles ist auf Deutsch kommentiert!

## Schritt 5: Den Server starten!
1. Mache einen Doppelklick auf die Datei **`Start.bat`**. 
2. Es öffnet sich das ServerWiki.network Konsolenfenster.
3. Du wirst nun gefragt, welche Map du starten möchtest. Drücke **C** für Chernarus, **E** für Enoch (Livonia) oder **S** für Sakhal.
4. Dein Server fährt nun hoch. Das kann beim ersten Mal ein paar Minuten dauern. 
5. *Bonus:* Wenn der Server abstürzt, startet dieses Fenster ihn automatisch neu!

Um dem Server beizutreten, starte dein normales DayZ, gehe auf "LAN" oder nutze den "Direct Connect" (Direktverbindung) mit deiner lokalen IP-Adresse (oder `127.0.0.1`). Viel Spaß!