import tweepy
import os

ck = os.environ['X_API_KEY']
cs = os.environ['X_API_KEY_SECRET']
bt = os.environ['X_BEARER_TOKEN']
at = os.environ['X_ACCESS_TOKEN']
ats = os.environ['X_ACCESS_TOKEN_SECRET']

client = tweepy.Client(
    bearer_token=bt,
    consumer_key=ck, consumer_secret=cs,
    access_token=at, access_token_secret=ats
)

content = os.getenv('X_POST_MESSAGE')

client.create_tweet(text=content)