#!/bin/bash
# yarn の GPG 検証挙動を確認するためのセットアップスクリプト

set -e

# yarn リポジトリを追加する前の update なので、yarn の GPG 検証はまだ走らない
# （curl / gpg をインストールするためだけに実行）
echo "===== apt-get update -y 開始 ====="
apt-get update -y
echo "===== apt-get update -y 終了 ====="
echo "===== apt-get install -y --no-install-recommends curl gpg ca-certificates開始 ====="
apt-get install -y --no-install-recommends curl gpg ca-certificates
echo "===== apt-get install -y --no-install-recommends curl gpg ca-certificates終了 ====="

# # ↓ ここで初めて yarn リポジトリを登録する
# # この時点ではまだ apt-get update していないので GPG 検証は未実施

# # ① yarn の GPG キーをダウンロードしてキーリングに変換・保存
echo "===== curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor > /usr/share/keyrings/yarn-archive-keyring.gpg 開始 ====="
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor > /usr/share/keyrings/yarn-archive-keyring.gpg
echo "===== curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor > /usr/share/keyrings/yarn-archive-keyring.gpg 終了 ====="

# # ② yarn リポジトリを apt に登録（signed-by でキーリングを指定）
echo "===== deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/yarn-archive-keyring.gpg] https://dl.yarnpkg.com/debian/ stable main 開始 ====="
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/yarn-archive-keyring.gpg] https://dl.yarnpkg.com/debian/ stable main" \
    > /etc/apt/sources.list.d/yarn.list
echo "===== deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/yarn-archive-keyring.gpg] https://dl.yarnpkg.com/debian/ stable main 終了 ====="


echo ""
echo "===== セットアップ完了 ====="
echo "以下のコマンドで GPG 検証の挙動を確認できます:"
echo ""
echo "  apt-get -o Debug::Acquire::gpg=1 update 2>&1 | grep -i gpg"
echo ""
echo "キーリングの内容確認:"
echo "  gpg --no-default-keyring --keyring /usr/share/keyrings/yarn-archive-keyring.gpg --list-keys"
echo ""
echo "登録済みリポジトリの確認:"
echo "  cat /etc/apt/sources.list.d/yarn.list"
