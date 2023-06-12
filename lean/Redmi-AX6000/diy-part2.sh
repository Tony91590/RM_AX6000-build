#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Custom for REDMI AX6000
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
sed -i 's/zh_cn/auto/g' feeds/luci/modules/luci-base/root/etc/uci-defaults/luci-base
rm -rf feeds/packages/net/ddns-scripts/files/ddns.config
cp $GITHUB_WORKSPACE/lean/Redmi-AX6000/data/ddns.config feeds/packages/net/ddns-scripts/files/
rm -rf feeds/luci/applications/luci-app-turboacc/root/etc/init.d/turboacc
cp $GITHUB_WORKSPACE/lean/Redmi-AX6000/data/turboacc feeds/luci/applications/luci-app-turboacc/root/etc/init.d/
