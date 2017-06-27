---
layout: post
title: An IntelliJ convert
date: 2017-06-26 23:36
author: techenomics1
comments: true
categories: [Uncategorized]
---

Ok, so I kept working with polymorphism tonight and I certainly have a better grasp of the concept after tonight, as polymorphism is the program/main reacting/calling the correct method based on the correct situation/object.  The other thing I spent tonight doing was working with IntelliJ which I have to say makes things super easy.  Up until this point I was just using a repl which is really great but ceratinly doesn't have the features of a full IDE.  I also thought that IntelliJ would charge like the other jetbrains products like Pycharm or Rubyminer.  I have to say at this point though that Inellij makes life and code reuse super easy.  For the longest time though (about an hour) I couldn't get the program to run my Main class...which turned out to be because I forgot to include public static void main(String[] args){ // Code here} in my program...derp.  

```Java


import javax.xml.bind.SchemaOutputResolver;

/**
 * Created by rjr on 6/26/17.
 */
class Car {

    int cylinders;
    int wheels;
    String color;
    boolean engine;

    public Car() {
        this.cylinders = 4;
        this.wheels = 4;
        this.color = "Red";
        this.engine = true;
    }

    public int getCylinders() {
        return cylinders;
    }


    public String getColor() {
        return color;
    }


    public void startEngine() {

        System.out.println("Starting engine...vroom");
    }

    public void accelerate() {

        System.out.println("Moving forward");
    }

    public void brake() {

        System.out.println("Stopping");
    }
}

class Truck extends Car{

    public void brake() {

        System.out.println("Stopping the truck");
    }
}

class Bus extends Car{


    public void brake() {

        System.out.println("Stopping the bus");
    }
}

class Lambo extends Car{


    public void accelerate() {

        System.out.println("Acelerating super fast");
    }


    public void brake() {

        System.out.println("Stopping the lambo");
    }
}

public class Main {

    public static void main(String[] args) {
        Car car = new Car();
        Truck truck =  new Truck();
        Bus bus = new Bus();
        Lambo lambo = new Lambo();
        car.brake();
        truck.brake();
        bus.brake();
        lambo.accelerate();

    }



}

```