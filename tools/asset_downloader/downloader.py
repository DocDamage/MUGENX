import sys
import os
import requests
import re
from urllib.parse import urljoin

def download_assets(url):
    print(f"=== ASSET DOWNLOADER: Scanning {url} ===")
    
    try:
        response = requests.get(url, timeout=10)
        response.raise_for_status()
    except Exception as e:
        print(f"Error accessing URL: {e}")
        return

    # Simple regex to find file links
    # Looking for .zip, .rar, .7z, .def, .sff
    extensions = r'\.(zip|rar|7z|def|sff)$'
    
    links = re.findall(r'href=[\'"]?([^\'" >]+)', response.text)
    
    download_dir = os.path.join("..", "..", "downloads")
    os.makedirs(download_dir, exist_ok=True)
    
    count = 0
    for link in links:
        if re.search(extensions, link, re.IGNORECASE):
            full_url = urljoin(url, link)
            filename = os.path.basename(full_url)
            
            # Filter out common false positives or tiny files if needed
            print(f"  > Found asset: {filename}")
            
            try:
                print(f"    Downloading...", end="", flush=True)
                file_resp = requests.get(full_url, stream=True)
                file_path = os.path.join(download_dir, filename)
                
                with open(file_path, 'wb') as f:
                    for chunk in file_resp.iter_content(chunk_size=8192):
                        f.write(chunk)
                print(" DONE")
                count += 1
            except Exception as e:
                print(f" FAILED ({e})")
                
    if count == 0:
        print("No assets found on this page.")
    else:
        print(f"Successfully downloaded {count} assets to {download_dir}")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - ASSET DOWNLOADER ===")
        url = input("Enter URL to scan: ")
        if not url.startswith("http"):
            url = "https://" + url
        download_assets(url)
        input("\nPress Enter to close...")
    elif len(sys.argv) < 2:
        print("Usage: python downloader.py <URL>")
    else:
        download_assets(sys.argv[1])
