#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.199.10/g' package/base-files/files/bin/config_generate

#拦截广告koolproxyR
#git clone https://github.com/Leo-Jo/luci-app-koolproxyR.git package/lean/luci-app-koolproxyR
#git clone https://github.com/sypopo/luci-theme-atmaterial.git package/lean/luci-theme-atmaterial


#remove default theme https://cuiqingwei.github.io/2019/12/24/2019-12-24-%E4%BD%BF%E7%94%A8GitHub-Actions%E7%BC%96%E8%AF%91OpenWRT/
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap


