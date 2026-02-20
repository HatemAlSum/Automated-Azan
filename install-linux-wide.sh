sudo apt-get install python3-altgraph
sudo apt-get install python3-casttube
sudo apt-get install python3-certify
sudo apt-get install python3-charset-normalizer
sudo apt-get install python3-distlib
sudo apt-get install python3-filelock
sudo apt-get install python3-idna
sudo apt-get install python3-ifaddr
sudo apt-get install python3-pause
sudo apt-get install python3-pefile
sudo apt-get install python3-platformdirs
sudo apt-get install python3-protobuf
sudo apt-get install python3-PyChromecast
sudo apt-get install python3-pyinstaller
sudo apt-get install python3-pyinstaller-hooks-contrib
sudo apt-get install python3-python-dateutil
sudo apt-get install python3-pywin32-ctypes
sudo apt-get install python3-requests
sudo apt-get install python3-schedule
sudo apt-get install python3-six
sudo apt-get install python3-tz
sudo apt-get install python3-zeroconf
sudo apt-get install python3-chardet
sudo apt-get install python3-netaddr

pyinstaller --hiddenimport zeroconf._utils.ipaddress --hiddenimport zeroconf._handlers.answers --noconfirm execute_azan.py

sudo mkdir  /opt/Automated-Azan
sudo cp -r  dist/execute_azan/*  /opt/Automated-Azan/
sudo cp azan.service /etc/systemd/system/
sudo systemctl enable azan.service
sudo systemctl start azan.service
sudo reboot
