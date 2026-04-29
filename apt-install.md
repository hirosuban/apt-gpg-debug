===== apt-get update -y 開始 =====
Get:1 http://deb.debian.org/debian trixie InRelease [140 kB]
Get:2 http://deb.debian.org/debian trixie-updates InRelease [47.3 kB]
Get:3 http://deb.debian.org/debian-security trixie-security InRelease [43.4 kB]
Get:4 http://deb.debian.org/debian trixie/main arm64 Packages [9607 kB]
Get:5 http://deb.debian.org/debian trixie-updates/main arm64 Packages [5404 B]
Get:6 http://deb.debian.org/debian-security trixie-security/main arm64 Packages [128 kB]
Fetched 9972 kB in 1s (8351 kB/s)                         
Reading package lists... Done
===== apt-get update -y 終了 =====
===== apt-get install -y --no-install-recommends curl gpg ca-certificates開始 =====
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
curl is already the newest version (8.14.1-2+deb13u2).
gpg is already the newest version (2.4.7-21+deb13u1+b2).
gpg set to manually installed.
ca-certificates is already the newest version (20250419).
0 upgraded, 0 newly installed, 0 to remove and 2 not upgraded.
===== apt-get install -y --no-install-recommends curl gpg ca-certificates終了 =====
===== curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor > /usr/share/keyrings/yarn-archive-keyring.gpg 開始 =====
===== curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor > /usr/share/keyrings/yarn-archive-keyring.gpg 終了 =====
===== deb [arch=arm64 signed-by=/usr/share/keyrings/yarn-archive-keyring.gpg] https://dl.yarnpkg.com/debian/ stable main 開始 =====
===== deb [arch=arm64 signed-by=/usr/share/keyrings/yarn-archive-keyring.gpg] https://dl.yarnpkg.com/debian/ stable main 終了 =====