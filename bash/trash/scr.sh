# make keyring visible for Adobe Air
$ sudo ln -s /usr/lib/i386-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
$ sudo ln -s /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0

# Download Adobe Air
cd ~/Downloads
wget http://airdownload.adobe.com/air/lin/download/2.6/AdobeAIRSDK.tbz2
$ sudo mkdir /opt/adobe-air-sdk
$ sudo tar jxf AdobeAIRSDK.tbz2 -C /opt/adobe-air-sdk

# Download Air runtime/SDK from Archlinux
wget https://aur.archlinux.org/cgit/aur.git/snapshot/adobe-air.tar.gz
$ sudo tar xvf adobe-air.tar.gz -C /opt/adobe-air-sdk
$ sudo chmod +x /opt/adobe-air-sdk/adobe-air/adobe-air

# Get actual scratch file URL from https://scratch.mit.edu/scratch2download/
$ sudo mkdir /opt/adobe-air-sdk/scratch
wget https://scratch.mit.edu/scratchr2/static/sa/Scratch-456.0.1.air
$ sudo cp Scratch-456.0.1.air /opt/adobe-air-sdk/scratch/
cp Scratch-456.0.1.air /tmp/
cd /tmp/
unzip /tmp/Scratch-456.0.1.air
$ sudo cp /tmp/icons/AppIcon128.png /opt/adobe-air-sdk/scratch/scratch.png
