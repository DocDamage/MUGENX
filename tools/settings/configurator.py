import sys
import os
import json

CONFIG_PATH = os.path.join("..", "..", "save", "config.json")
# Fallback if save/ doesn't exist yet
DEFAULT_CONFIG_PATH = os.path.join("..", "..", "config.json")

def load_config():
    path = CONFIG_PATH if os.path.exists(CONFIG_PATH) else DEFAULT_CONFIG_PATH
    try:
        with open(path, 'r') as f:
            return json.load(f)
    except:
        return {}

def save_config(data):
    # Always save to save/config.json to override defaults
    os.makedirs(os.path.dirname(CONFIG_PATH), exist_ok=True)
    with open(CONFIG_PATH, 'w') as f:
        json.dump(data, f, indent=4)
    print("Settings saved.")

def configure_settings():
    print("=== ADVANCED SETTINGS CONFIGURATOR ===")
    config = load_config()
    
    while True:
        print("\nCurrent Settings:")
        print(f"1. Fullscreen: {config.get('Fullscreen', 'False')}")
        print(f"2. Resolution: {config.get('Width', 1280)}x{config.get('Height', 720)}")
        print(f"3. Shader: {config.get('PostProcessingShader', 'None')}")
        print(f"4. Master Volume: {config.get('MasterVolume', 100)}")
        print("5. Save & Exit")
        
        choice = input("Select Option (1-5): ")
        
        if choice == "1":
            curr = config.get('Fullscreen', False)
            config['Fullscreen'] = not curr
        elif choice == "2":
            print("  a. 1280x720 (HD)")
            print("  b. 1920x1080 (FHD)")
            print("  c. 640x480 (Retro)")
            res = input("  Select: ")
            if res == "a": config['Width'], config['Height'] = 1280, 720
            elif res == "b": config['Width'], config['Height'] = 1920, 1080
            elif res == "c": config['Width'], config['Height'] = 640, 480
        elif choice == "3":
            print("  a. None")
            print("  b. CRT-Geom (Retro Look)")
            print("  c. HQ4x (Smoothing)")
            print("  d. Scanlines")
            sh = input("  Select: ")
            if sh == "a": config['PostProcessingShader'] = ""
            elif sh == "b": config['PostProcessingShader'] = "external/shaders/CRT-Geom.glsl"
            elif sh == "c": config['PostProcessingShader'] = "external/shaders/HQ4x.glsl"
            elif sh == "d": config['PostProcessingShader'] = "external/shaders/Scanlines.glsl"
        elif choice == "4":
            try:
                vol = int(input("  Enter Volume (0-100): "))
                config['MasterVolume'] = max(0, min(100, vol))
            except: pass
        elif choice == "5":
            save_config(config)
            break

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        configure_settings()
        input("\nPress Enter to close...")
    else:
        configure_settings()
