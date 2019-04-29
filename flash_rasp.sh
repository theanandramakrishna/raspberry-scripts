# Flashes raspbian image

disknum=$1
imagefile=$2
diskutil unmountDisk "/dev/$disknum"
sudo dd bs=1m if="$imagefile" of="/dev/r$disknum" conv=sync
sudo diskutil eject "/dev/r$disknum"

