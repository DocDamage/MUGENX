import requests
import base64
import os
import time

# Default configuration for Local Automatic1111 WebUI
SD_URL = "http://127.0.0.1:7860"

def check_connection():
    try:
        response = requests.get(f"{SD_URL}/sdapi/v1/progress")
        return response.status_code == 200
    except:
        return False

def generate_image(prompt, negative_prompt="", width=512, height=512, steps=20, output_path=None):
    payload = {
        "prompt": prompt,
        "negative_prompt": negative_prompt,
        "steps": steps,
        "width": width,
        "height": height,
        "sampler_name": "Euler a",
        "cfg_scale": 7
    }

    print(f"[SD Client] Generating image for: '{prompt}'...")
    
    try:
        response = requests.post(f"{SD_URL}/sdapi/v1/txt2img", json=payload)
        
        if response.status_code == 200:
            r = response.json()
            image_data = r['images'][0]
            
            if output_path:
                with open(output_path, "wb") as f:
                    f.write(base64.b64decode(image_data))
                print(f"[SD Client] Image saved to {output_path}")
            
            return image_data
        else:
            print(f"[SD Client] Error: {response.status_code}")
            return None
            
    except Exception as e:
        print(f"[SD Client] Connection Failed: {e}")
        return None

if __name__ == "__main__":
    # Test run
    if check_connection():
        print("Connected to Stable Diffusion API!")
        generate_image("A futuristic fighting game character, pixel art style", output_path="test_char.png")
    else:
        print("Could not connect to Stable Diffusion API at " + SD_URL)
        print("Please ensure Automatic1111 WebUI is running with --api flag.")
