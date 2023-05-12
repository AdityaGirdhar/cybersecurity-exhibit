import subprocess

# Create Wi-Fi hotspot with SSID "FREE WIFI" and password "MyPassw0rd"
subprocess.run(["sudo", "launchctl", "load", "-w", "/System/Library/LaunchDaemons/com.apple.InternetSharing.plist"])
subprocess.run(["sudo", "defaults", "write", "/Library/Preferences/SystemConfiguration/com.apple.nat", "NAT", "-dict-add", "SharingNetworkName", "FREE WIFI"])
subprocess.run(["sudo", "defaults", "write", "/Library/Preferences/SystemConfiguration/com.apple.nat", "NAT", "-dict-add", "SharingNetworkPassword", "MyPassw0rd"])

# Print out details of connected devices
while True:
    output = subprocess.check_output(["arp", "-a"])
    output_str = output.decode("utf-8")
    lines = output_str.splitlines()
    for line in lines:
        if "en0" in line and "at" in line:
            parts = line.split(" ")
            bssid = parts[3].strip()
            device = parts[1].strip()
            print(f"Device {device} connected with BSSID {bssid}")
