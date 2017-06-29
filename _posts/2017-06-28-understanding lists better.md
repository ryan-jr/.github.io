---
layout: post
title: understanding lists better
date: 2017-06-28 23:58
author: techenomics1
comments: true
categories: [Uncategorized]
---

Ok, so I was trying to better figure out lists when I ran across [this slide presentation from Harvard](http://www.fas.harvard.edu/~cscie119/lectures/lists_stacks_queues_revised.pdf).  Specifically the slide that discusses lists is as such:

```

list = a sequence of items that supports at least the following
functionality:
• accessing an item at an arbitrary position in the sequence
• adding an item at an arbitrary position
• removing an item at an arbitrary position
• determining the number of items in the list (the list’s length)


```

The above for me makes a TON more sense in understanding what a list is and how it operates.  This in conjuction with the book by Lewis and Chase (Java software structures 3rd edition) does a TON in helping my understanding of data structures (especially ordered, unordered, and indexed lists).  It helps me realize that an array is an indexed list and that stacks and queues aren't (usually) lists by default because they are LIFO and FIFO respectively, although stacks and queues CAN have removal methods implemented.  

This also helps me realize that sometimes a summary (or a powerpoint) works a lot better at explaining/breaking things down than a book or even a page of text.  