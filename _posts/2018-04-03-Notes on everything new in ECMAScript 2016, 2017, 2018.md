---
layout: post
title: Notes on everything new in ECMAScript 2016, 2017, 2018
date: 2018-04-03 18:04
author: techenomics1
comments: true
categories: [Uncategorized]
---


### ECMAScript 2016(AKA: ES7)

1.  Array.prototype.includes

```Javascript

var arr = [1, 2, 3, NaN];

// Rather than
if(arr.indexOf(3) >= 0) {
	
	console.log(true);
}

// Use
if(arr.includes(3)) {
	console.log(true);
}

// Note indexOf doesn't work when searching for NaN

```

2.  Exponent infix operator

```Javascript

// Rather than
Math.pow(7, 2);

// Use
7 ** 2;


```

### ECMAScript 2017

1.  Object.values()

* Similar to Object.keys() but returns all the values of the Object's properties excluding any values in the prototypical chain

```Javascript

const cars = { BMW: 3, Tesla: 2, Ford: 1};

// Instead of
const vals = Object.keys(cars).map(key => cars[key]);
console.log(vals);

// Use
const values = Object.values(cars);
console.log(values);



```

2.  Object. entries()

* Related to Object.keys, but returns keys and values in an array/array fashion

3.  String Padding

* Using padStart and padEnd, you can define what and how many you want to pad with, you can even padStart/padEnd emojis

4.  Object.getOwnPropertyDescriptors()

* This method returns all details including getter/setter methods for all of the properties of a given object as opposed to the usual Object.assign which does not return get/set methods


5.  Allowing for trailing commas after object paramaters

6.  Async/Await

* The async keyword tells the JS compiler to treat the function differently.  The compiler pauses upon reaching the await keyword within the function and assumes that the expression after the await keyword returns a promise and waits until the promise is resolved/rejected before moving on.

* It is also now possible to call async/await in parallel using Promise.all


* Error handling within Async/await functions includes try/catch, catch/await, or catch the entire function.


### ECMAScript 2018

1.  Share memory/atomics.  

* The point of this is to bring some sort of multithreading to JS for high performance/concurrent programs and allow for more granular memory management rather than having the JS engine manage it all

* To share data between the main JS thread and web workers usually we had to use postMessage, but now with ShareArrayBuffer, the data is accessible by all threads.

* To avoid race conditions this version of JS introduces Atomics which provides various methods of locking shared memory when a thread is using its data

2.  Removing tagged template literal.

* TTLs allowed devs to customize how strings were interpolated which was useful for features in different domains, HTTP requests, etc...

* The issue w/ TTLs was that they didn't allow unicode/hex escape requests

3.  "Dotall" flag for regex

* Even though "." is supposed to match a single char it doesn't match newlines etc.. in current JS, this enhancement allows it to while not breaking anything as long as we use \s

4.  Regex named group captures

* Name your regex groups

5.  Rest properties for Objects

* Rest operator "..." allows the extraction of Object properties that aren't already extracted


6.  Spread properties for objects

* While Spread looks the same as rest properties "...", spread is used on the right side of the equals sign, whereas rest is used on the left side.  Spread is used to create/restructure new objects


7.  Asynchronus Iteration

* Allows us to create loops of async code.  This feature waits for each promise to resolve before continuing to the next loop.



### Promises

* Since JS is single threaded only one bit of JS can run at a time.  

* Promises are like event listeners but, a promise can succeed/fail once.  If a promise has succeeded/failed and you add a success/fail callback later, the correct callback will be called even though the even took place earlier.  

* Promises can be fulfilled(success), rejected(fail), pending(hasn't succeeded/failed yet), settled(has fulfilled/rejected).  

* A promise in one sentence is an object that may produce a single value at some point in the future.  That value will be either a resolved value or a reason it's not resolved.  

