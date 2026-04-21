import requests
import json
import os

# Configuration
# Defaulting to a local LLM endpoint (e.g., LM Studio, Ollama)
# For OpenAI, change URL to "https://api.openai.com/v1/chat/completions" and set your key.
API_URL = "http://localhost:1234/v1/chat/completions" 
API_KEY = "lm-studio" # Placeholder for local, or "sk-..." for OpenAI

def generate_text(system_prompt, user_prompt, max_tokens=200):
    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {API_KEY}"
    }
    
    payload = {
        "model": "local-model", # Change to "gpt-3.5-turbo" etc if using OpenAI
        "messages": [
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": user_prompt}
        ],
        "temperature": 0.7,
        "max_tokens": max_tokens
    }
    
    try:
        response = requests.post(API_URL, headers=headers, json=payload, timeout=10)
        response.raise_for_status()
        data = response.json()
        return data['choices'][0]['message']['content'].strip()
    except requests.exceptions.ConnectionError:
        print("Error: Could not connect to LLM Server.")
        print(f"Make sure an LLM is running at {API_URL}")
        return None
    except Exception as e:
        print(f"Error generating text: {e}")
        return None
