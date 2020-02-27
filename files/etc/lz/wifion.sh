#!/bin/sh
uci set wireless.@wifi-device[0].disabled=0
uci set wireless.@wifi-device[1].disabled=0
wifi
uci commit 