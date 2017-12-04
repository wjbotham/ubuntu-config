# This script assumes you have an entry titled VirtualBox_Share in the Machine
# Folders section of the Shared Folders tab for this VM.

# It takes one argument: The path where you want the share to be linked.

mkdir /media/windows-share
mount -t vboxsf VirtualBox_Share /media/windows-share
ln -s /media/windows-share/ $1
