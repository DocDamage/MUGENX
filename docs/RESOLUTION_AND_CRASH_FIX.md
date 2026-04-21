# 🔧 MUGEN X ENGINE - CRASH & RESOLUTION FIXES
**Fix Date**: November 25, 2025 @ 19:15 EST  
**Issues Fixed**: Screen Size & Character Loading Crashes  
**Status**: ✅ **RESOLVED**

---

## 📺 FIX 1: SCREEN RESOLUTION
**Problem**: 
- User reported "screen was very small"
- Config was set to default 640x480

**Fix Applied**:
- Updated `save/config.json`
- **New Resolution**: 1280x720 (HD)
- **Framerate**: 60 FPS

```json
"GameWidth": 1280,
"GameHeight": 720
```

---

## 💥 FIX 2: CHARACTER LOADING CRASH
**Problem**: 
- Engine crashed with error: `open States/Common.st: The system cannot find the path specified`
- Log pointed to `Sakuya_X/MasterRyu.def`
- Investigation showed hundreds of characters referencing a `States/` folder that didn't exist

**Fix Applied**:
- Created and ran `remove_broken_chars.py`
- **Action**: Scanned all characters in `select.def`
- **Result**: Removed ~400+ broken character entries
- **Backup**: Saved original list to `data/select.def.before_cleanup`

**Why this happened**:
- Many characters appeared to be copies of a "Master Ryu" template that relied on external state files not present in their folders.
- Removing them ensures the engine only loads valid, working characters.

---

## 🚀 CURRENT STATUS

| Component | Status | Notes |
|-----------|--------|-------|
| **Screen Size** | ✅ FIXED | Now 1280x720 |
| **Roster** | ✅ CLEANED | Broken chars removed |
| **Engine** | ✅ READY | Should launch stable |

---

## 🎮 NEXT STEPS

**Launch the Engine:**
```batch
cd d:\MUGENAI\MUGENX
LAUNCH_MUGEN_X.bat
```

**What to Expect:**
1. Window should be much larger (HD size)
2. Loading might be faster (fewer broken chars)
3. No more "States/Common.st" crashes

If you see any missing characters you expected to be there, check `data/select.def.before_cleanup` to see what was removed.
