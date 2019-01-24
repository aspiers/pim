#!/bin/sh

cat <<EOF
#
# @synopsis: alogcat-filters
# @description: Filter Android phone logs for interesting events
#

EOF

echo -n ":filter-out "
perl -0777pe 's/\n/|/g; s/\|$/\n/' <<EOF
A2dp
AidRouting
Amazon
AodBattery
Avrcp
Bluetooth.*
ClipboardAction
ColorBalance
Embryo_Uterus
Fingerprint
FirewallController
GeocoderProxy
GH\.(Wifi|Headset)
Keyguard
NativeTrafficDataModel
Nearby
Nfc
Notification
NtpTrustedTime
RegisteredAidCache
Sdl 
SearchService
SensorManager
SingleNotificationView
StatusBar
Tile
TrafficUsage
TrustAgent
VnAutoLaunch
WidgetView
Wifi
audio
bt_
chatty
qti_sensors
readitlater
vendor\.qti
weathe
wpa_supplicant
thermal
EOF

echo -n ":highlight "
perl -0777pe 's/\n/|/g; s/\|$/\n/' <<EOF
Finsky.*
vending.*
play
EOF
