#!/bin/bash
# yarn の GPG 検証挙動を確認するためのセットアップスクリプト

set -e

# # ① yarn の GPG キーをダウンロードしてキーリングに変換・保存
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor > /usr/share/keyrings/yarn-archive-keyring.gpg

# # ② yarn リポジトリを apt に登録（signed-by でキーリングを指定）
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/yarn-archive-keyring.gpg] https://dl.yarnpkg.com/debian/ stable main" \
    > /etc/apt/sources.list.d/yarn.list

echo ""
echo "===== セットアップ完了 ====="
echo "以下のコマンドで GPG 検証の挙動を確認できます:"
echo ""
echo "  apt-get -o Debug::pkgAcquire::Auth=1 update 2>&1 | grep -i gpg"
echo ""
echo "キーリングの内容確認:"
echo "  gpg --no-default-keyring --keyring /usr/share/keyrings/yarn-archive-keyring.gpg --list-keys"
echo ""
echo "登録済みリポジトリの確認:"
echo "  cat /etc/apt/sources.list.d/yarn.list"
