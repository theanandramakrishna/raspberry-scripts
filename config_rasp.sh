bootpath=$1
ssid=$2
pwd=$3

# turn on ssh on first boot
echo ssh > "$bootpath"/ssh

#supply wifi connection details on first boot
cat >"$bootpath"/wpa_supplicant.conf <<EOF
country=us
update_config=1
ctrl_interface=/var/run/wpa_supplicant

network={
 scan_ssid=1
 ssid="$ssid"
 psk="$pwd"
}
EOF




