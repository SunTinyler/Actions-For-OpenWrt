修改配置文件，就可以支持多种硬件的编译。简化配置文件的修改。 

- 官方OpenWRT
- lean的lede （OpenWRT加强版）
- lienol-openwrt （OpenWRT加强版）
 

- 使用文件大法
https://github.com/P3TERX/Actions-OpenWrt/issues/90


- 引入外部的repo
https://github.com/esirplayground/AutoBuild-OpenWrt/blob/master/.github/workflows/Build_OP_x86.yml

   



# Actions-Lean-OpenWrt

- `master`是[Lean's OpenWrt source](https://github.com/coolsnowwolf/lede)编译，分支`Lienol-openwrt`是[Lienol's openwrt source](https://github.com/Lienol/openwrt)编译。  
- 自定义文件 “files 大法”是把你自定义的配置编译到固件里。这样升级或恢复出厂设置都不需要保留配置，缺省值就是自定义的配置。
- 如你现在的network设置编译进固件：首先提取路由固件下的`\etc\config\network` 然后在项目根目录下创建files目录并`push` 到 `\files\etc\config\network `，最后编译出来的固件就是现在设置的network。
- 自定义编译的方法可以搭配使用，自己需要的服务一般不会随意变化，就可以在 `make menuconfig` 选好（新手参考[OpenWrt MenuConfig设置和LuCI插件选项说明](https://mtom.ml/827.html)）后执行 `./scripts/diffconfig.sh > seed.config` 复制一下这个`seed.config`的文本内容到项目根目录的`.config`文件中（建议自命名），这样就不用每次都SSH连接到 Actions生成编译配置，真正一键编译。
- 修改`.github/workflows/build-openwrt.yml`中`.config`为你的自命名###.config文件。
- 另外如果，使用“files 大法”仓库最好设为私有，否则你的配置信息，如宽带账号等会公开在网上。
- 如果需要可以编写多个`workflows`文件对应`###.config`，开启多流程同时编译。
