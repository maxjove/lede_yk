#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#mkdir package/base-files/files/config
#echo 0xDEADBEEF > package/base-files/files/config/google_fu_mode
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git luci-app-serverchan https://github.com/tty228/luci-app-serverchan' feeds.conf.default
sed -i '$a src-git node-request https://github.com/jerrykuku/node-request'  feeds.conf.default
sed -i '$a src-git luci-app-jd-dailybonus https://github.com/jerrykuku/luci-app-jd-dailybonus'  feeds.conf.default
#./scripts/feeds update -a && ./scripts/feeds install -a
