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
git clone https://github.com/rufengsuixing/luci-app-zerotier.git package/luci-app-zerotier
git clone https://github.com/kuoruan/openwrt-v2ray.git package/v2ray-core
git clone -b luci2 https://github.com/kuoruan/luci-app-v2ray.git package/luci-app-v2ray
git clone -b master --depth 1 https://github.com/kuoruan/openwrt-upx.git package/openwrt-upx
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/kenzok8/small.git package/small
#wget https://github.com/upx/upx/releases/download/v3.95/upx-3.95-amd64_linux.tar.xz
#tar -Jxf upx*.tar.xz
#cp upx*/upx /usr/bin
cp /usr/bin/upx /workdir/openwrt/staging_dir/host/bin
cp /usr/bin/upx-ucl /workdir/openwrt/staging_dir/host/bin
