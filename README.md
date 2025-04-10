# 🚨 anti_citizen

**anti_citizen** は、FiveM サーバー向けのクライアント監視・不正検出ツールです。  
即時スクリーンショットを Discord Webhook へ送信することができます。

---

## ✨ 主な機能

- 🔍 チート疑惑のUIや挙動をNUIで検知
- 📸 対象プレイヤーのスクリーンショットを Discord に自動送信
- 🔔 管理者へチャット通知 or ログ送信
- ✅ クライアント側描画のUIをそのまま反映（例: Inject Menu, 改造HUDなど）

---

## 📦 インストール方法

1. `resources/` に `anti_citizen` フォルダを設置
2. `server.cfg` に以下を追記：

```cfg
ensure screenshot-basic
ensure anti_citizen
# anti_citizen1

## 📦 コマンド
/getscreenshot [ID]で使用可能
Admin権限を持ってるプレイヤーのみが実行可能です

> **⚠️ 注意：本スクリプトは `kotoriedit` によって作成されたオリジナル構成を基にしており、  
> いかなる場合においても再配布・販売・自作発言は禁止です。**

## 📌 利用ガイドライン

- ✅ **個人または所属サーバー内での利用のみ許可**
- ❌ **改造しての再配布、販売、マーケット出品は禁止**
- ❌ **スクリプトの自作発言禁止**
- ✅ `fxmanifest.lua` のクレジット行（`author`, `description`など）は**変更しないことを推奨**
- ✅ 改造が必要な場合は **オリジナル構造を尊重し、最低限に留めてください**