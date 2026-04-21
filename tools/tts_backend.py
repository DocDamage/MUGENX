"""
MUGEN X ENGINE - TTS BACKEND
Uses system text-to-speech to generate voice lines for the announcer and characters.
"""
import sys
import os

try:
    import pyttsx3
except ImportError:
    print("❌ pyttsx3 not found. Installing...")
    os.system(f"{sys.executable} -m pip install pyttsx3")
    import pyttsx3

def speak(text, rate=150, volume=1.0):
    print(f"🗣️  SAYING: {text}")
    engine = pyttsx3.init()
    
    # Configure Voice
    engine.setProperty('rate', rate)
    engine.setProperty('volume', volume)
    
    # Try to find a good voice
    voices = engine.getProperty('voices')
    for voice in voices:
        if "david" in voice.name.lower() or "zira" in voice.name.lower(): # Common Windows voices
            engine.setProperty('voice', voice.id)
            break
            
    engine.say(text)
    engine.runAndWait()

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: tts_backend.py [text]")
        speak("MUGEN X ENGINE... ONLINE.")
    else:
        speak(sys.argv[1])
