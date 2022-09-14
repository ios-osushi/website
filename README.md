# website

[![CI](https://github.com/ios-osushi/website/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/ios-osushi/website/actions/workflows/ci.yml)
[![Deploy](https://github.com/ios-osushi/website/actions/workflows/deploy.yml/badge.svg?branch=main)](https://github.com/ios-osushi/website/actions/workflows/deploy.yml)

iOS OsushiのWebサイトのソースです。

## 開発

誰でもこのプロジェクトを開発できます。

### 必要条件

- Xcode 14.0+ (Swift 5.7+)
- Python
- Make

### セットアップ

1. このプロジェクトをクローンします。  
    ```shell
    $ git clone https://github.com/ios-osushi/website.git
    $ cd website
    ```

2. `make setup` を実行します。

3. `open Package.swift` を実行し、Xcodeで開発します。

### 記事の追加

`Content/posts` フォルダにMarkdownファイルを追加するのみです。

### プレビュー

`make run` を実行し、 http://localhost:8000 へアクセスすると、プレビューが表示されます。

## 校正

[textlint](https://github.com/textlint/textlint) を使って文章を校正しています。

### 必要条件

- Node.js 16

### セットアップ

`npm install` を実行するのみです。

### 校正の実行

`npm run lint` を実行するのみです。  
`npm run fix` を実行すると自動修正します。

## 貢献

貢献をお待ちしています :relaxed:

- [新しいIssue](https://github.com/ios-osushi/website/issues/new)
- [新しいプルリクエスト](https://github.com/ios-osushi/website/compare)
- [新しい議論](https://github.com/ios-osushi/website/discussions/new)

iOS関連のニュースは、お気軽にIssueで報告してくださると嬉しいです。
