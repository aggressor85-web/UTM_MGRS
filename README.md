# UTM・MGRS 座標計算（iOS）

## 起動手順（Mac必須）
1. ZIPを展開し、`GridCoordinate.xcodeproj` をXcodeで開きます。
2. Xcode上部の実行先で iPhone シミュレーターを選択します。
3. ▶（Run）を押します。
4. 実機の場合は、Signing & Capabilitiesでご自身のApple Teamを指定し、Bundle Identifierを必要に応じて変更してください。

## 実装内容
- UTMとMGRSの自己座標、格子北基準の方位角、水平距離から移動先座標を算出
- 360°・6400ミル切り替え
- オフライン動作（WKWebViewに同梱したHTMLを表示）
- iPhone / iPad、iOS 15以降をターゲット

## 注意
- Xcodeのビルド・iOSシミュレーターでの実機相当テストは、この環境では未実施です。
- 地表距離とUTM格子距離の縮尺差は補正していません。
- UTMゾーン境界の自動切替はありません。
- MGRSの方眼・緯度帯境界付近では地図/GNSSでの検証が必要です。
- 弾道・射撃諸元の計算機能はありません。
