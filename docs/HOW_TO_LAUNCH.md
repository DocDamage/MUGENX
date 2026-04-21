# 🎮 HOW TO LAUNCH MUGEN X ENGINE

## ✅ CORRECT WAY (Use This!)

**Double-click:** `LAUNCH_MUGEN_X.bat`

This launcher:
- Sets the correct working directory
- Verifies all files exist
- Shows helpful error messages
- Launches the game properly

## ❌ WRONG WAY (Don't Do This!)

**Do NOT double-click:** `engine\Ikemen_GO.exe` directly

This will cause errors like:
- "main.lua file not found"
- "external/script/main.lua: the system cannot find the path specified"

## 🔧 TROUBLESHOOTING

### If you see "main.lua not found":
1. Make sure you're using `LAUNCH_MUGEN_X.bat`
2. Check that you're in the correct folder (`d:\MUGENAI\MUGENX`)
3. Verify `external\script\main.lua` exists

### If the game launches but Dev Menu (F8) doesn't work:
1. Check the console window for errors
2. Look for "MUGEN X ERROR:" messages
3. Verify all modules loaded (should see "✅ ALL MODULES INITIALIZED!")

## 📁 FILE STRUCTURE

Your project should look like this:
```
d:\MUGENAI\MUGENX\
├── LAUNCH_MUGEN_X.bat  ← USE THIS
├── engine\
│   └── Ikemen_GO.exe   ← Don't use directly
├── external\
│   └── script\
│       └── main.lua
├── data\
│   └── system.def
├── modules\
│   └── (79 files)
└── ...
```

## 🎯 QUICK START

1. **Launch:** Double-click `LAUNCH_MUGEN_X.bat`
2. **Dev Menu:** Press `F8` in-game
3. **Navigate:** Use Arrow Keys + Enter
4. **AI Lab:** Generate content on-the-fly
5. **Settings:** Customize everything

Enjoy your MUGEN X ENGINE! 🏆
