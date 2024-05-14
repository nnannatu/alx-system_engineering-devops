#!/usr/bin/python3
"""Function to print hot posts on a given Reddit subreddit."""
import requests


def top_ten(subreddit):
    """Print the titles of the 10 hottest posts on a given subreddit."""
    url = "https://www.reddit.com/r/{}/hot.json?limit=10".format(subreddit)
    headers = {
        'User-Agent': 'MyRedditAPI/0.1
        (Python3.8; Linux; Ubuntu 20.04; Developer: johndoe@example.com)'
    }

    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        # Check if the response status code is 200 (OK)
        if response.status_code == 200:
            data = response.json()
            posts = data['data']['children']
            for post in posts:
                print(post['data']['title'])
        else:
            print(None)
    except requests.RequestException:
        print(None)