# Lock Preventer Script

This project provides a small PowerShell script with a batch launcher to prevent your computer from locking automatically (e.g., due to inactivity or power-saving settings).

## 🔧 Installation

1. Copy both files – `lock-prevent.ps1` and `start-lock-prevent.bat` – into the same folder.
2. Create a shortcut to the file `start-lock-prevent.bat`.
3. (Optional) Place the shortcut in your Startup folder to run the script automatically when your system boots.

## ⚙️ What does the script do?

The PowerShell script regularly (every 4.5 minutes) sends a Scroll Lock key signal (`{SCROLLLOCK}`) using the Windows Forms API. This simulates activity and helps prevent the system from entering sleep or lock mode due to inactivity.

How it works:

- Scroll Lock is toggled on and off with a 100ms pause in between.
- A timestamp is printed to the console to log the action.
- The script then waits 270 seconds (4 minutes and 30 seconds) before repeating.

## ⚠️ Notes

- The script requires PowerShell and access to the Windows Forms assembly.
- On some systems, you may notice the Scroll Lock LED blinking.
