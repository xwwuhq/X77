import os
import platform
import time
import sys
import getpass
import socket

def slow_print(text, speed=0.02):
    for char in text:
        sys.stdout.write(char)
        sys.stdout.flush()
        time.sleep(speed)
    print()

def banner():
    print("""
 ████████╗███████╗██████╗ ███╗   ███╗██╗   ██╗██╗  ██╗
 ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║   ██║╚██╗██╔╝
    ██║   █████╗  ██████╔╝██╔████╔██║██║   ██║ ╚███╔╝ 
    ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║   ██║ ██╔██╗ 
    ██║   ███████╗██║  ██║██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗
    ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝

        >>> SYSTEM ACCESS TOOL v1.0 <<<
    """)

def check_termux():
    return "com.termux" in os.environ.get("PREFIX", "") or "/data/data/com.termux" in os.getcwd()

def check_root():
    return os.geteuid() == 0

def system_info():
    print("\n[+] SYSTEM INFORMATION\n")
    print("User        :", getpass.getuser())
    print("OS          :", platform.system(), platform.release())
    print("Architecture:", platform.machine())
    print("Python ver. :", platform.python_version())

def network_info():
    hostname = socket.gethostname()
    ip = socket.gethostbyname(hostname)
    print("\n[+] NETWORK INFORMATION\n")
    print("Hostname :", hostname)
    print("Local IP :", ip)

def fake_access():
    slow_print("\n[+] Initializing access module...")
    time.sleep(1)
    slow_print("[+] Connecting to system core...")
    time.sleep(1)
    slow_print("[+] Reading environment variables...")
    time.sleep(1)
    slow_print("[+] Access granted (simulation) ✔")

def main():
    os.system("clear")
    banner()
    slow_print("Booting tool...")
    time.sleep(1)

    if check_termux():
        slow_print("[✔] Environment : TERMUX detected")
    else:
        slow_print("[✖] Environment : NOT Termux")

    if check_root():
        slow_print("[✔] Privilege level : ROOT")
    else:
        slow_print("[✖] Privilege level : USER")

    system_info()
    network_info()
    fake_access()

    slow_print("\n[+] Scanning system...")
    for i in range(1, 6):
        slow_print(f"   -> Module {i}/5 loaded")
        time.sleep(0.5)

    slow_print("\n[✓] Operation completed successfully.")
    slow_print("This tool does NOT hack. It only displays system status.")
    slow_print(">>> END OF PROCESS <<<\n")

if __name__ == "__main__":
    main()