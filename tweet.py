import os
import requests

# 環境変数からTwitterのアクセストークンを取得
bearer_token = os.environ['_BEARER_TOKEN']

# ツイート内容をコマンドライン引数から取得
tweet_content = os.getenv('TWEET_MESSAGE')

# ツイートを作成するエンドポイント
url = "https://api.twitter.com/2/tweets"

# リクエストヘッダー
headers = {
    "Authorization": f"Bearer {bearer_token}",
    "Content-Type": "application/json",
}

# リクエストボディ
data = {
    "text": tweet_content,
}

# POSTリクエストを送信
response = requests.post(url, headers=headers, json=data)

# レスポンスを確認
if response.status_code == 201:
    print("ツイートが正常に投稿されました！")
else:
    print(f"エラーが発生しました: {response.status_code} - {response.json()}")