root ➜ /workspaces/apt-gpg-debug (master) $ apt-get -o Debug::pkgAcquire::Auth=1 update 2>&1
0% [Working]201 URI Done: http://deb.debian.org/debian/dists/trixie/InRelease
ReceivedHash:
ExpectedHash:

Hit:1 http://deb.debian.org/debian trixie InRelease
0% [Connected to dl.yarnpkg.com (104.16.168.120)]201 URI Done: http://deb.debian.org/debian/dists/trixie-updates/InRelease
ReceivedHash:
ExpectedHash:

Hit:2 http://deb.debian.org/debian trixie-updates InRelease
0% [Connected to dl.yarnpkg.com (104.16.168.120)]201 URI Done: sqv:/var/lib/apt/lists/deb.debian.org_debian_dists_trixie_InRelease
ReceivedHash:
ExpectedHash:

Signature verification succeeded: /var/lib/apt/lists/deb.debian.org_debian_dists_trixie_InRelease
Got Codename: trixie
Got Suite: stable
Expecting Dist: trixie
0% [Waiting for headers] [Connected to dl.yarnpkg.com (104.16.168.120)]201 URI Done: sqv:/var/lib/apt/lists/deb.debian.org_debian_dists_trixie-updates_InRelease
ReceivedHash:
ExpectedHash:

Signature verification succeeded: /var/lib/apt/lists/deb.debian.org_debian_dists_trixie-updates_InRelease
Got Codename: trixie-updates
Got Suite: stable-updates
Expecting Dist: trixie-updates
0% [Waiting for headers] [Connected to dl.yarnpkg.com (104.16.168.120)]201 URI Done: http://deb.debian.org/debian-security/dists/trixie-security/InRelease
ReceivedHash:
ExpectedHash:

Hit:3 http://deb.debian.org/debian-security trixie-security InRelease  
0% [Connected to dl.yarnpkg.com (104.16.168.120)]201 URI Done: sqv:/var/lib/apt/lists/deb.debian.org_debian-security_dists_trixie-security_InRelease
ReceivedHash:
ExpectedHash:

Signature verification succeeded: /var/lib/apt/lists/deb.debian.org_debian-security_dists_trixie-security_InRelease
Got Codename: trixie-security
Got Suite: stable-security
Expecting Dist: trixie-security
Get:4 https://dl.yarnpkg.com/debian stable InRelease
0% [4 InRelease 16.5 kB]201 URI Done: https://dl.yarnpkg.com/debian/dists/stable/InRelease
ReceivedHash:
        - SHA512:07545d527919fc2b44cde54068a905e92c106b52689ea8cc3bc33a24fb7587e687285cc54279434cd97ae2022f8157fc768417340aa4139656ab0ad8136d93db
        - SHA256:95c99498e45dc02d50c65d98dd059d1cc9deea6a02e5ed17e7fdd2eb25a3df13
        - SHA1:8769196679b228ce6f672e7e61e337eff5906d57
        - MD5Sum:0d61bec12f9389f727e64d91111268b1
        - Checksum-FileSize:16521
ExpectedHash:

0% [Working]201 URI Done: sqv:/var/lib/apt/lists/partial/dl.yarnpkg.com_debian_dists_stable_InRelease
ReceivedHash:
ExpectedHash:

Signature verification succeeded: /var/lib/apt/lists/partial/dl.yarnpkg.com_debian_dists_stable_InRelease
Got Codename: stable
Got Suite: stable
Expecting Dist: stable
Get:5 https://dl.yarnpkg.com/debian stable/main arm64 Packages [10.9 kB]
201 URI Done: https://dl.yarnpkg.com/debian/dists/stable/main/binary-arm64/Packages.bz2
ReceivedHash:
        - SHA512:3b9fd234d29c07a5e011c68b3234ebd85d5bcc4a77237ce1350cd595e3989b433ef530208c2d9627cd8e557fe101e507a4db001bf9b52b1b202dc5f42104b255
        - SHA256:2c1b52f0b56c75b1a77cc1a377f262636e324bda842a745b81b4aa3409157d19
        - SHA1:56c1cdb4291828d3163d01ec53ceb38b0825f67b
        - MD5Sum:d6757c4448b14b816a9436616e2d6d55
        - Checksum-FileSize:10930
ExpectedHash:
        - Checksum-FileSize:10930
        - SHA512:3b9fd234d29c07a5e011c68b3234ebd85d5bcc4a77237ce1350cd595e3989b433ef530208c2d9627cd8e557fe101e507a4db001bf9b52b1b202dc5f42104b255
        - SHA256:2c1b52f0b56c75b1a77cc1a377f262636e324bda842a745b81b4aa3409157d19
        - SHA1:56c1cdb4291828d3163d01ec53ceb38b0825f67b
        - MD5Sum:d6757c4448b14b816a9436616e2d6d55

74% [5 Packages store 0 B] [Waiting for headers]201 URI Done: store:/var/lib/apt/lists/partial/dl.yarnpkg.com_debian_dists_stable_main_binary-arm64_Packages.bz2
ReceivedHash:
        - SHA512:44ac4c530a67e569f63740d8e7b4f2a70a97acfaf5a35c8af705f860e1ac56dec50b9d0c419539a6c15f1aa5345fcbe2228b45f6e0a8fe7dfba81b1035562366
        - SHA256:88bcf70723d1247d73b74117e410d33ff43caba4a537879b51e7144908f746f9
        - SHA1:8ee219b2d7d09b7c1226e3c51b6a19839f4921c8
        - MD5Sum:92278c692316172b015eedebfca509f7
        - Checksum-FileSize:75196
ExpectedHash:
        - Checksum-FileSize:75196
        - SHA512:44ac4c530a67e569f63740d8e7b4f2a70a97acfaf5a35c8af705f860e1ac56dec50b9d0c419539a6c15f1aa5345fcbe2228b45f6e0a8fe7dfba81b1035562366
        - SHA256:88bcf70723d1247d73b74117e410d33ff43caba4a537879b51e7144908f746f9
        - SHA1:8ee219b2d7d09b7c1226e3c51b6a19839f4921c8
        - MD5Sum:92278c692316172b015eedebfca509f7

Get:6 https://dl.yarnpkg.com/debian stable/main all Packages [10.9 kB]
98% [6 Packages 10.9 kB/10.9 kB 100%]201 URI Done: https://dl.yarnpkg.com/debian/dists/stable/main/binary-all/Packages.bz2
ReceivedHash:
        - SHA512:3b9fd234d29c07a5e011c68b3234ebd85d5bcc4a77237ce1350cd595e3989b433ef530208c2d9627cd8e557fe101e507a4db001bf9b52b1b202dc5f42104b255
        - SHA256:2c1b52f0b56c75b1a77cc1a377f262636e324bda842a745b81b4aa3409157d19
        - SHA1:56c1cdb4291828d3163d01ec53ceb38b0825f67b
        - MD5Sum:d6757c4448b14b816a9436616e2d6d55
        - Checksum-FileSize:10930
ExpectedHash:
        - Checksum-FileSize:10930
        - SHA512:3b9fd234d29c07a5e011c68b3234ebd85d5bcc4a77237ce1350cd595e3989b433ef530208c2d9627cd8e557fe101e507a4db001bf9b52b1b202dc5f42104b255
        - SHA256:2c1b52f0b56c75b1a77cc1a377f262636e324bda842a745b81b4aa3409157d19
        - SHA1:56c1cdb4291828d3163d01ec53ceb38b0825f67b
        - MD5Sum:d6757c4448b14b816a9436616e2d6d55

98% [6 Packages store 0 B]201 URI Done: store:/var/lib/apt/lists/partial/dl.yarnpkg.com_debian_dists_stable_main_binary-all_Packages.bz2
ReceivedHash:
        - SHA512:44ac4c530a67e569f63740d8e7b4f2a70a97acfaf5a35c8af705f860e1ac56dec50b9d0c419539a6c15f1aa5345fcbe2228b45f6e0a8fe7dfba81b1035562366
        - SHA256:88bcf70723d1247d73b74117e410d33ff43caba4a537879b51e7144908f746f9
        - SHA1:8ee219b2d7d09b7c1226e3c51b6a19839f4921c8
        - MD5Sum:92278c692316172b015eedebfca509f7
        - Checksum-FileSize:75196
ExpectedHash:
        - Checksum-FileSize:75196
        - SHA512:44ac4c530a67e569f63740d8e7b4f2a70a97acfaf5a35c8af705f860e1ac56dec50b9d0c419539a6c15f1aa5345fcbe2228b45f6e0a8fe7dfba81b1035562366
        - SHA256:88bcf70723d1247d73b74117e410d33ff43caba4a537879b51e7144908f746f9
        - SHA1:8ee219b2d7d09b7c1226e3c51b6a19839f4921c8
        - MD5Sum:92278c692316172b015eedebfca509f7

Fetched 38.4 kB in 1s (66.8 kB/s)
Reading package lists... Done