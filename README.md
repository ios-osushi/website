# website

[![CI](https://github.com/ios-osushi/website/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/ios-osushi/website/actions/workflows/ci.yml)
[![Deploy](https://github.com/ios-osushi/website/actions/workflows/deploy.yml/badge.svg?branch=main)](https://github.com/ios-osushi/website/actions/workflows/deploy.yml)

iOS OsushiのWebサイトのソースです。

## 開発

誰でもこのプロジェクトを開発できます。

### 必要条件

- Xcode 13.3+ (Swift 5.6+)

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

## 貢献

貢献していただけると嬉しいです :relaxed:

- [新しいIssue](https://github.com/ios-osushi/website/issues/new)
- [新しいプルリクエスト](https://github.com/ios-osushi/website/compare)
