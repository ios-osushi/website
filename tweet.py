import os
import requests
from requests_oauthlib import OAuth1

# 環境変数からTwitterの認証情報を取得
consumer_key = os.environ['X_API_KEY']
consumer_secret = os.environ['X_API_KEY_SECRET']
access_token = os.environ['X_ACCESS_TOKEN']
access_token_secret = os.environ['X_ACCESS_TOKEN_SECRET']

# ツイート内容をコマンドライン引数から取得
tweet_content = os.getenv('X_POST_MESSAGE')

# OAuth1認証
auth = OAuth1(consumer_key, consumer_secret, access_token, access_token_secret)

# ツイートを作成するエンドポイント
url = "https://api.twitter.com/1.1/statuses/update.json"

# リクエストボディ
data = {
    "status": tweet_content,
}

# POSTリクエストを送信
response = requests.post(url, auth=auth, data=data)

# レスポンスを確認
if response.status_code == 200:
    print("ツイートが正常に投稿されました！")
else:
    print(f"エラーが発生しました: {response.status_code} - {response.json()}")
