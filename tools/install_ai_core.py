"""
MUGEN X ENGINE - AI CORE INSTALLER
Downloads TinyLlama and installs libraries for Text & Image generation.
"""
import os
import sys
import subprocess
import urllib.request
from pathlib import Path

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
MODELS_DIR = BASE_DIR / "models"
MODEL_URL = "https://huggingface.co/TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF/resolve/main/tinyllama-1.1b-chat-v1.0.Q4_K_M.gguf"
MODEL_PATH = MODELS_DIR / "tinyllama-1.1b-chat.Q4_K_M.gguf"

def install_libraries():
    print("📦 Installing AI Libraries (this may take a moment)...")
    pkgs = ["ctransformers", "diffusers", "transformers", "accelerate", "torch", "Pillow"]
    try:
        subprocess.check_call([sys.executable, "-m", "pip", "install"] + pkgs)
        print("✅ Libraries Installed!")
    except Exception as e:
        print(f"❌ Library Installation Failed: {e}")

def download_model():
    MODELS_DIR.mkdir(exist_ok=True)
    if MODEL_PATH.exists():
        print("✅ Text Model already exists.")
        return

    print(f"⬇️  Downloading TinyLlama (637 MB)...")
    try:
        urllib.request.urlretrieve(MODEL_URL, MODEL_PATH)
        print("✅ Download Complete!")
    except Exception as e:
        print(f"❌ Download Failed: {e}")

if __name__ == "__main__":
    print("="*60)
    print("🤖 MUGEN X AI SETUP")
    print("="*60)
    install_libraries()
    download_model()
    print("\n🎉 AI CORE READY! You can now use the AI Lab.")
