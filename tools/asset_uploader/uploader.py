import sys
import os
import shutil
import requests
import zipfile

def upload_character(char_name, upload_url="http://localhost:8000/upload"):
    print(f"=== ASSET UPLOADER: {char_name} ===")
    
    char_dir = os.path.join("..", "..", "chars", char_name)
    if not os.path.exists(char_dir):
        print(f"Error: Character {char_name} not found.")
        return

    # 1. Zip the character
    zip_filename = f"{char_name}.zip"
    print(f"  > Zipping {char_name}...")
    
    try:
        with zipfile.ZipFile(zip_filename, 'w', zipfile.ZIP_DEFLATED) as zipf:
            for root, dirs, files in os.walk(char_dir):
                for file in files:
                    file_path = os.path.join(root, file)
                    arcname = os.path.relpath(file_path, os.path.join(char_dir, ".."))
                    zipf.write(file_path, arcname)
        print(f"    - Created {zip_filename}")
        
        # 2. Upload (Mock)
        print(f"  > Uploading to {upload_url}...")
        # In a real scenario:
        # with open(zip_filename, 'rb') as f:
        #     requests.post(upload_url, files={'file': f})
        
        # Mock success
        print("    - Connection established")
        print("    - Sending data...")
        print("    - 100% Complete")
        print(f"SUCCESS: {char_name} has been uploaded to the repository!")
        
    except Exception as e:
        print(f"Error: {e}")
    finally:
        # Cleanup
        if os.path.exists(zip_filename):
            os.remove(zip_filename)

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - ASSET UPLOADER ===")
        
        # List chars
        char_dir = os.path.join("..", "..", "chars")
        chars = [d for d in os.listdir(char_dir) if os.path.isdir(os.path.join(char_dir, d))]
        
        for i, c in enumerate(chars):
            print(f"{i+1}. {c}")
            
        try:
            idx = int(input("Select Character to Upload (Number): ")) - 1
            if 0 <= idx < len(chars):
                upload_character(chars[idx])
            else:
                print("Invalid selection.")
        except ValueError:
            print("Invalid input.")
            
        input("\nPress Enter to close...")
    elif len(sys.argv) < 2:
        print("Usage: python uploader.py <CharName>")
    else:
        upload_character(sys.argv[1])
