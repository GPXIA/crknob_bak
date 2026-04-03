参考以下代码
https://github.com/Bush2021/chrome_plus
https://github.com/kkocdko/crknob
https://github.com/microsoft/Detours/
https://github.com/Bush2021/mini_gzip

实现核心

chrome便携核心
查看Chromium的源代码
http://src.chromium.org/viewvc/chrome/trunk/src/rlz/win/lib/machine_id_win.cc
里面有这个函数
GetRawMachineId
调用了两个判断系统环境的Windows-API
GetComputerNameW和GetVolumeInformationW
只要使这两个API返回false，就能干扰浏览器判断系统环境，从而解决便携问题。

我需要代码中添加chrome启动参数
--user-data-dir=locales\\user
--disk-cache-dir=locales\\user
--incognito

Chrome 110 之后启用了强制安全机制：进程沙箱 + 代码完整性保护 (CIG) + 模块签名校验   


绕过 CIG / 沙箱 / 签名校验，适配 Chrome 146

DLL注入方式已经不再适用chrome110以后版本  采用version.dll方式 dll系统劫持


实现最终功能，chrome可以更换设备便携，不丢失数据，加上我给出的参数。

支持 GitHub Actions 自动编译 + CMake 的最终完整工程



