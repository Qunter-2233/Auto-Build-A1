#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git package/luci-app-zerotier https://github.com/rufengsuixing/luci-app-zerotier.git' >>feeds.conf.default
echo 'src-git package/v2ray-core https://github.com/kuoruan/openwrt-v2ray.git' >>feeds.conf.default
echo 'src-git package/luci-app-v2ray -b luci2 https://github.com/kuoruan/luci-app-v2ray.git' >>feeds.conf.default
echo 'src-git package/openwrt-upx -b master --depth 1 https://github.com/kuoruan/openwrt-upx.git' >>feeds.conf.default
echo 'src-git package/openwrt-packages https://github.com/kenzok8/openwrt-packages.git' >>feeds.conf.default
echo 'src-git package/small https://github.com/kenzok8/small.git' >>feeds.conf.default
