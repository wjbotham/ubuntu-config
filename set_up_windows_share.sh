# This script assumes you have an entry titled VirtualBox_Share in the Machine
# Folders section of the Shared Folders tab for this VM.

sudo mkdir /media/windows-share
sudo mount -t vboxsf VirtualBox_Share /media/windows-share
ln -s /media/windows-share/ ~/Desktop/WindowsShare
ln -s /media/windows-share/ ~/WindowsShare
