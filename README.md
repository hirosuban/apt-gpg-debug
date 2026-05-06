# apt-gpg-debug

`apt-get update` が外部リポジトリのパッケージを検証する際の挙動を、デバッグオプション付きで確認するための検証用リポジトリです。

## 概要

yarn の外部リポジトリを apt に登録し、`Debug::pkgAcquire::Auth=1` オプションを使って apt の GPG 署名検証ログを観察します。

**確認できること**

- `apt-get update` が行う3層のセキュリティ検証の流れ
  1. `InRelease` ファイルの GPG 署名を検証（公開鍵を使用）
  2. `InRelease` 内のハッシュで `Packages` ファイルを検証
  3. `Packages` 内のハッシュで各 `.deb` ファイルを検証（`apt install` 時）

## 環境

- ベースイメージ: `mcr.microsoft.com/devcontainers/python:3.11-trixie` (Debian 13)
- devcontainer 対応

## 使い方

### 1. devcontainer を起動する

VS Code の Dev Containers 拡張機能でコンテナを開くと、`setup.sh` が自動実行されます。

setup.sh では以下が行われます。

- yarn の GPG 公開鍵を取得し、`/usr/share/keyrings/yarn-archive-keyring.gpg` に配置
- yarn リポジトリを `/etc/apt/sources.list.d/yarn.list` に登録

### 2. デバッグログを確認する

```sh
apt-get -o Debug::pkgAcquire::Auth=1 update 2>&1
```

### その他の確認コマンド

```sh
# キーリングの内容確認
gpg --no-default-keyring --keyring /usr/share/keyrings/yarn-archive-keyring.gpg --list-keys

# 登録済みリポジトリの確認（yarn）
cat /etc/apt/sources.list.d/yarn.list

# 登録済みリポジトリの確認（Debian 公式）
cat /etc/apt/sources.list.d/debian.sources
```
