---
layout: post
title: Composing stuffs
date: 2017-06-24 15:05
author: techenomics1
comments: true
categories: [Uncategorized]
---
OK, so composition took a little bit for me to understand, but it's not too different from classes/inheritance in general.  

So, if inheritance is a IS-A relationship (A car IS-A vehicle (e.g. car inherits from the vehicle class)), then composition is a HAS-A
relationship (e.g. a car HAS-A engine, a plane HAS-A engine, etc...).  In practice what this means is that we use another class to provide the specificity.  A graphical representation of this might be:

```

Vehicle (class)
	|
	|
  IS-A
	|
Car (class) --- HAS-A-- Engine(class)

```

I think that [this article](http://www.w3resource.com/java-tutorial/inheritance-composition-relationship.php) does a good, concise explanation of things and when to use composition (hint, not just for code reuse, but when there's not an IS-A relationship that is clear).  There's another article [here](http://www.javaworld.com/article/2076814/core-java/inheritance-versus-composition--which-one-should-you-choose-.html) that's old school (2001), that goes more in depth but ends up making things somewhat more confusing for me and the information may be out of date (even if the concept is still relavent).  

I decided to implement composition (code is wonderful that way) and overall it makes sense, even though I'm likely missing some nuance there.  

```Java

// Main class

public class Main {
	
	public static void main(String[] args) {
		
		Car car = new Car();
		car.getWheels();
		car.setWheels(2);
	}
}

```

```Java

// Car class
public class Car{
	
	private int wheels;
	private int doors;
	private Engine engine;
	
	public Car() {
		
		this.wheels = 4;
		this.doors = 2;
		this.engine = new Engine();
		engine.engineOn();
	}
	
	public int getWheels() {
		
		System.out.println(wheels);
		return this.wheels;
	}
	
	public void setWheels(int wheels) {
		
		this.wheels = wheels;
		System.out.println(wheels);
	}
}

```


```Java

// Engine class (used for composition)
public class Engine{
	
	public String fuelType;
	
	public Engine() {
		
		this.fuelType = "Regular";
	}
	
	public void engineOn() {
		
		System.out.println("The engine is on");
	}
	
	public void engineOff() {
		
		System.out.println("The engine is off");
	}
	
	
}

```
