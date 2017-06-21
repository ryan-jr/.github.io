---
layout: post
title: Learning With Lynda
date: 2017-03-31 21:55
author: techenomics1
comments: true
categories: [Uncategorized]
---

So I just did the second project on Lynda.com's Up and Running With Java.  I really enjoy it, it's pretty straightforward, but there are some things that I find that I prefer in terms of coding style, that may be because I'm a newbie but are good to know.

For instance:

```Java

double surfaceArea, length, width;

```

VS

```Java

double surfaceArea;
double length;
double width;

```

So I can understand the utility of the first style, and will likely eventually use it, but for now I'm finding that I prefer the second style, as it is a more explicit typing, again being a newbie that isn't surprising.  

The other part of the project that I found interesting was the input:

```Java

// Doing everything all at once
System.out.println("Please enter the length, width, and height of the house");
new Scanner in = new Scanner(System.in);
length = in.nextDouble();
width = in.nextDouble();
height = in.nextDouble();


```

VS


```Java

        System.out.println("Please input the number of doors");
        Scanner numDoorReader = new Scanner(System.in);
        numOfDoors = numDoorReader.nextDouble(); 
        
        System.out.println("Please input the height of the doors(in feet)");
        Scanner doorHeightReader = new Scanner(System.in);
        doorHeight = numDoorReader.nextDouble(); 

```

So again I prefer the second type of code style as opposed to the first because I think explicitly asking what input is required is more beneficial and transparent.  

I suspect my habits will change with time and experience, but for now this works out pretty well, until I get the training wheels off.  