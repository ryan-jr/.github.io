---
layout: post
title: FIguring out Flask
date: 2017-10-08 08:15
author: techenomics1
comments: true
categories: [Uncategorized]
---
I've been figuring out blockchains thanks to the post on Medium [Learn Blockchains by Building One](https://hackernoon.com/learn-blockchains-by-building-one-117428612f46), which overall is pretty good but there were some issues that cropped up that didn't quite make sense.  First I couldn't get the routes to work for some reason, specifically to the /mine endpoint because I kept getting a 404 error and it wouldn't show up.  I kept going back to the article and even went to the [source code](https://github.com/dvf/blockchain/blob/master/blockchain.py) but couldn't figure it out.  Even Postman/Curl wasn't any help because every time I tried to access the API it gave me the error of "Unexpected <" which even after some googling gave me no luck.  

I ended up finding out what it was by googling this morning that my Flask routes weren't working, as it turns out I was putting the routes in the wrong place.  After googling "Flask route not working", I found [This](https://stackoverflow.com/questions/32805261/flask-dynamic-route-not-working-real-python) Stackoverflow post that explained pretty clearly what was happening, which was that the app.run() was running before the new routes were declared, meaning that the server started up and only saw the routes declared above it not below.  For example:

```Python3

# Incorrect!!!

if __name__ == '__main__':
    app.run(host = '127.0.0.1', port = 5000)

@app.route('/hello', methods = ['GET'])
def hello():
	return "hello world"


```

Versus:

```Python3

# Correct
@app.route('/hello', methods = ['GET'])
def hello():
	return "hello world"

if __name__ == '__main__':
    app.run(host = '127.0.0.1', port = 5000)


```

Long story short: order matters.  

The blockchains post has also helped teach me about APIs and about Postman (which I really couldn't figure out before) and how/why they work which has been really nice.  