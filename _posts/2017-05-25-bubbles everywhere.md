---
layout: post
title: bubbles everywhere
date: 2017-05-25 23:41
author: techenomics1
comments: true
categories: [Uncategorized]
---


Rediscovering bubblesort was pretty cool for me because it feels like it gets me back on track to where I want to go with software engineering, and having that plan is pretty key.  I need to do a blog post later of doing a year of learning programming.  


```Java

import java.util.*;
class Main {
  
  
  public static void main(String[] args) {
    
    int[] array = {99, 100, 2, 1};
    boolean isSorted = false;

    while (!isSorted) {
      isSorted = true;

      // Iterate until we get to the last element
      // This is key because it repeats the for loop every single time
      for (int index = 1; index < array.length; index++) {

        // If the element to the left is bigger then swap the element with its neighbor
        if (array[index - 1] > array[index]) {
          isSorted = false;


          // Swap elements by creating a temp variable.
          int temp = array[index - 1];
          array[index - 1] = array[index];
          array[index] = temp;
      }
      
      System.out.println(Arrays.toString(array));
    }
   }
  }
}

```

So with bubblesort the key insight for me was having the for loop INSIDE the while loop in order to understand that the for loop reset everytime we went through the while loop again in order to compare every element.  That part took the longest for me to grasp in order to make sense of a abstract/strange problem.  Writing things out and talking through them really does help, even if it seems silly.  

Also I found a cool way to do Java projects with [https://programmingbydoing.com/](Program by doing).  I'm also having a really tough time trying to wrap my head around interfaces and abstract classes.  I understand interfaces are supposed to be like a contract and offer a work around for multiple inheritance, but why wouldn't you just implement the methods in the interface directly in the class? It's still a strange concept to me, nothing I've read or watched so far has made it click for me and I feel like I'm beating my head against a wall.  