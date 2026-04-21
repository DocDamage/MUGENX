import sys
import os
import random
import math
import struct

def generate_music(stage_name, mood):
    print(f"=== AI MUSIC COMPOSER: {stage_name} ({mood}) ===")
    
    music_dir = os.path.join("..", "..", "sound", "music")
    os.makedirs(music_dir, exist_ok=True)
    filename = os.path.join(music_dir, f"{stage_name}_theme.wav")
    
    print(f"  > Composing track based on mood: {mood}...")
    
    # Audio parameters
    sample_rate = 44100
    duration = 5 # seconds (short loop for demo)
    n_samples = sample_rate * duration
    
    # Mood parameters
    m = mood.lower()
    
    if m == "dark":
        base_freq = 110; scale = [0, 3, 7]; tempo = 0.5
    elif m == "happy":
        base_freq = 261.63; scale = [0, 4, 7]; tempo = 0.2
    elif m == "rock":
        base_freq = 146.83; scale = [0, 3, 5, 7, 10]; tempo = 0.15
    elif m == "jazz":
        base_freq = 196.00; scale = [0, 4, 7, 11, 14]; tempo = 0.25
    elif m == "orchestral":
        base_freq = 130.81; scale = [0, 2, 4, 5, 7, 9, 11]; tempo = 0.4
    elif m == "8-bit":
        base_freq = 440.00; scale = [0, 4, 7]; tempo = 0.1
    elif m == "ambient":
        base_freq = 65.41; scale = [0, 7, 12, 19]; tempo = 1.0
    elif m == "metal":
        base_freq = 82.41; scale = [0, 1, 5, 6, 7, 8, 12]; tempo = 0.11
    elif m == "funk":
        base_freq = 146.83; scale = [0, 3, 5, 7, 9, 10]; tempo = 0.18
    elif m == "blues":
        base_freq = 130.81; scale = [0, 3, 5, 6, 7, 10]; tempo = 0.3
    elif m == "trance":
        base_freq = 293.66; scale = [0, 2, 3, 7, 8, 10]; tempo = 0.08
    elif m == "dubstep":
        base_freq = 55.00; scale = [0, 1, 4, 7, 8]; tempo = 0.22
    elif m == "reggae":
        base_freq = 196.00; scale = [0, 4, 7, 11]; tempo = 0.4
    elif m == "country":
        base_freq = 146.83; scale = [0, 4, 7, 9, 11]; tempo = 0.25
    elif m == "classical":
        base_freq = 261.63; scale = [0, 2, 4, 5, 7, 9, 11]; tempo = 0.3
    elif m == "horror":
        base_freq = 60.00; scale = [0, 1, 6, 7]; tempo = 0.8
    elif m == "victory":
        base_freq = 261.63; scale = [0, 4, 7, 12]; tempo = 0.15
    elif m == "sad":
        base_freq = 220.00; scale = [0, 3, 7]; tempo = 0.6
    # --- NEW MOODS ---
    elif m == "cyberpunk":
        base_freq = 73.42; scale = [0, 3, 5, 6, 7, 10]; tempo = 0.14
    elif m == "epic":
        base_freq = 110.00; scale = [0, 2, 3, 7, 8, 10]; tempo = 0.2
    elif m == "retro":
        base_freq = 220.00; scale = [0, 2, 4, 7, 9]; tempo = 0.18
    elif m == "latin":
        base_freq = 196.00; scale = [0, 1, 4, 5, 7, 8, 11]; tempo = 0.16
    elif m == "oriental":
        base_freq = 146.83; scale = [0, 1, 5, 7, 8]; tempo = 0.3
    elif m == "celtic":
        base_freq = 164.81; scale = [0, 2, 4, 7, 9]; tempo = 0.25
    elif m == "industrial":
        base_freq = 55.00; scale = [0, 1, 6, 7]; tempo = 0.12
    elif m == "lofi":
        base_freq = 130.81; scale = [0, 4, 7, 11]; tempo = 0.5
    elif m == "trap":
        base_freq = 65.41; scale = [0, 3, 5, 7, 10]; tempo = 0.13
    elif m == "disco":
        base_freq = 110.00; scale = [0, 3, 5, 7, 10]; tempo = 0.19
    elif m == "opera":
        base_freq = 261.63; scale = [0, 2, 4, 5, 7, 9, 11]; tempo = 0.45
    elif m == "tribal":
        base_freq = 98.00; scale = [0, 3, 5, 7]; tempo = 0.15
    elif m == "gothic":
        base_freq = 87.31; scale = [0, 2, 3, 5, 7, 8, 11]; tempo = 0.35
    elif m == "arcade":
        base_freq = 329.63; scale = [0, 3, 5, 7, 10]; tempo = 0.09
    elif m == "boss":
        base_freq = 55.00; scale = [0, 1, 3, 4, 6, 7, 9, 10]; tempo = 0.1
    else: # Default High Energy
        base_freq = 220; scale = [0, 3, 5, 7, 10]; tempo = 0.125

    # Generate Waveform (Simple Square/Sawtooth Synth)
    with open(filename, 'wb') as f:
        # WAV Header
        f.write(b'RIFF')
        f.write(struct.pack('<I', 36 + n_samples * 2))
        f.write(b'WAVEfmt ')
        f.write(struct.pack('<I', 16))
        f.write(struct.pack('<H', 1))
        f.write(struct.pack('<H', 1))
        f.write(struct.pack('<I', sample_rate))
        f.write(struct.pack('<I', sample_rate * 2))
        f.write(struct.pack('<H', 2))
        f.write(struct.pack('<H', 16))
        f.write(b'data')
        f.write(struct.pack('<I', n_samples * 2))
        
        # Audio Data
        phase = 0
        note_duration = int(sample_rate * tempo)
        current_freq = base_freq
        
        for i in range(n_samples):
            # Change note
            if i % note_duration == 0:
                interval = random.choice(scale)
                current_freq = base_freq * (2 ** (interval / 12.0))
                
            # Oscillator (Sawtooth)
import sys
import os
import random
import math
import struct

def generate_music(stage_name, mood):
    print(f"=== AI MUSIC COMPOSER: {stage_name} ({mood}) ===")
    
    music_dir = os.path.join("..", "..", "sound", "music")
    os.makedirs(music_dir, exist_ok=True)
    filename = os.path.join(music_dir, f"{stage_name}_theme.wav")
    
    print(f"  > Composing track based on mood: {mood}...")
    
    # Audio parameters
    sample_rate = 44100
    duration = 5 # seconds (short loop for demo)
    n_samples = sample_rate * duration
    
    # Mood parameters
    m = mood.lower()
    
    if m == "dark":
        base_freq = 110; scale = [0, 3, 7]; tempo = 0.5
    elif m == "happy":
        base_freq = 261.63; scale = [0, 4, 7]; tempo = 0.2
    elif m == "rock":
        base_freq = 146.83; scale = [0, 3, 5, 7, 10]; tempo = 0.15
    elif m == "jazz":
        base_freq = 196.00; scale = [0, 4, 7, 11, 14]; tempo = 0.25
    elif m == "orchestral":
        base_freq = 130.81; scale = [0, 2, 4, 5, 7, 9, 11]; tempo = 0.4
    elif m == "8-bit":
        base_freq = 440.00; scale = [0, 4, 7]; tempo = 0.1
    elif m == "ambient":
        base_freq = 65.41; scale = [0, 7, 12, 19]; tempo = 1.0
    elif m == "metal":
        base_freq = 82.41; scale = [0, 1, 5, 6, 7, 8, 12]; tempo = 0.11
    elif m == "funk":
        base_freq = 146.83; scale = [0, 3, 5, 7, 9, 10]; tempo = 0.18
    elif m == "blues":
        base_freq = 130.81; scale = [0, 3, 5, 6, 7, 10]; tempo = 0.3
    elif m == "trance":
        base_freq = 293.66; scale = [0, 2, 3, 7, 8, 10]; tempo = 0.08
    elif m == "dubstep":
        base_freq = 55.00; scale = [0, 1, 4, 7, 8]; tempo = 0.22
    elif m == "reggae":
        base_freq = 196.00; scale = [0, 4, 7, 11]; tempo = 0.4
    elif m == "country":
        base_freq = 146.83; scale = [0, 4, 7, 9, 11]; tempo = 0.25
    elif m == "classical":
        base_freq = 261.63; scale = [0, 2, 4, 5, 7, 9, 11]; tempo = 0.3
    elif m == "horror":
        base_freq = 60.00; scale = [0, 1, 6, 7]; tempo = 0.8
    elif m == "victory":
        base_freq = 261.63; scale = [0, 4, 7, 12]; tempo = 0.15
    elif m == "sad":
        base_freq = 220.00; scale = [0, 3, 7]; tempo = 0.6
    # --- NEW MOODS ---
    elif m == "cyberpunk":
        base_freq = 73.42; scale = [0, 3, 5, 6, 7, 10]; tempo = 0.14
    elif m == "epic":
        base_freq = 110.00; scale = [0, 2, 3, 7, 8, 10]; tempo = 0.2
    elif m == "retro":
        base_freq = 220.00; scale = [0, 2, 4, 7, 9]; tempo = 0.18
    elif m == "latin":
        base_freq = 196.00; scale = [0, 1, 4, 5, 7, 8, 11]; tempo = 0.16
    elif m == "oriental":
        base_freq = 146.83; scale = [0, 1, 5, 7, 8]; tempo = 0.3
    elif m == "celtic":
        base_freq = 164.81; scale = [0, 2, 4, 7, 9]; tempo = 0.25
    elif m == "industrial":
        base_freq = 55.00; scale = [0, 1, 6, 7]; tempo = 0.12
    elif m == "lofi":
        base_freq = 130.81; scale = [0, 4, 7, 11]; tempo = 0.5
    elif m == "trap":
        base_freq = 65.41; scale = [0, 3, 5, 7, 10]; tempo = 0.13
    elif m == "disco":
        base_freq = 110.00; scale = [0, 3, 5, 7, 10]; tempo = 0.19
    elif m == "opera":
        base_freq = 261.63; scale = [0, 2, 4, 5, 7, 9, 11]; tempo = 0.45
    elif m == "tribal":
        base_freq = 98.00; scale = [0, 3, 5, 7]; tempo = 0.15
    elif m == "gothic":
        base_freq = 87.31; scale = [0, 2, 3, 5, 7, 8, 11]; tempo = 0.35
    elif m == "arcade":
        base_freq = 329.63; scale = [0, 3, 5, 7, 10]; tempo = 0.09
    elif m == "boss":
        base_freq = 55.00; scale = [0, 1, 3, 4, 6, 7, 9, 10]; tempo = 0.1
    else: # Default High Energy
        base_freq = 220; scale = [0, 3, 5, 7, 10]; tempo = 0.125

    # Generate Waveform (Simple Square/Sawtooth Synth)
    with open(filename, 'wb') as f:
        # WAV Header
        f.write(b'RIFF')
        f.write(struct.pack('<I', 36 + n_samples * 2))
        f.write(b'WAVEfmt ')
        f.write(struct.pack('<I', 16))
        f.write(struct.pack('<H', 1))
        f.write(struct.pack('<H', 1))
        f.write(struct.pack('<I', sample_rate))
        f.write(struct.pack('<I', sample_rate * 2))
        f.write(struct.pack('<H', 2))
        f.write(struct.pack('<H', 16))
        f.write(b'data')
        f.write(struct.pack('<I', n_samples * 2))
        
        # Audio Data
        phase = 0
        note_duration = int(sample_rate * tempo)
        current_freq = base_freq
        
        for i in range(n_samples):
            # Change note
            if i % note_duration == 0:
                interval = random.choice(scale)
                current_freq = base_freq * (2 ** (interval / 12.0))
                
            # Oscillator (Sawtooth)
            phase += current_freq / sample_rate
            if phase > 1: phase -= 1
            
            sample = int((phase * 2 - 1) * 8000) # Amplitude
            f.write(struct.pack('<h', sample))
            
    print(f"Music generated: {filename}")

# Alias for compatibility
def compose_theme(stage_name, mood):
    """Alias for generate_music"""
    return generate_music(stage_name, mood)

if __name__ == "__main__":
    if len(sys.argv) > 2:
        generate_music(sys.argv[1], sys.argv[2])
    else:
        print("Usage: python composer.py <stage_name> <mood>")
        generate_music("TestStage", "Dark")
