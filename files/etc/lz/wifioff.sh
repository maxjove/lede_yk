#!/bin/sh
uci set wireless.@wifi-device[0].disabled=1
uci set wireless.@wifi-device[1].disabled=1
wifi
uci commit