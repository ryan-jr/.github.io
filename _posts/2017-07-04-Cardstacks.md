---
layout: post
title: Cardstacks
date: 2017-07-04 21:19
author: techenomics1
comments: true
categories: [Uncategorized]
---
Ok, so with my day off today I wanted to create a prototype flash card generator, so far it's coming along OK, and has most of the features that I want.  One of the things I struggled with when creating it was that I didn't follow the IS-A rule and tried to make cards an extension of the Cardstack class when really they should be separated, which created a stackoverflow error.  So far I've created what I want, and now I'm just working on the editing/deleting part of the idea.  

import java.util.*;

public class Main {
  
  public static void main(String[] args) {
    
    String name;
    int userInput = 0;
    
    while(userInput != 5) {
      
      System.out.println("1.  Create new card stack.");
      System.out.println("2.  Review card stack.");
      System.out.println("3.  Update/Edit card stack.");
      System.out.println("4.  Delete card stack");
      System.out.println("5.  Quit");
      
      Scanner scan = new Scanner(System.in);
      userInput = scan.nextInt();
      

    }
    
    Card[] cards = new Card[100];
    
    
    //System.out.println(cards[0].getBackOfCard());
  }
}


import java.util.*;

public class Cardstack {

  public void createNewCardStack() {
    
    System.out.println("What is the name of this card stack");
    Scanner scanner = new Scanner(System.in);
    String n = scanner.nextLine();
  }
}


import java.util.*;

public class Card {
  
  public String stackName;
  public String front;
  public String back;
  
  
  public Card() {
    
    
    System.out.println("What is the name of this card stack");
    Scanner scanner = new Scanner(System.in);
    this.stackName = scanner.nextLine();
    front = this.setFrontOfCard();
    back = this.setBackOfCard();
  }
  
  public Card(String name, String front, String back) {
    
    System.out.println("What is the name of this card stack");
    Scanner scanner = new Scanner(System.in);
    String n = scanner.nextLine();
    this.front = front;
    this.back = back;
  }
  
  public String setFrontOfCard() {
    
    Scanner scan = new Scanner(System.in);
    System.out.println("What should the FRONT of the card be?");
    String n = scan.nextLine();
    return n;
  }
  
  public String setBackOfCard() {
    
    Scanner scan = new Scanner(System.in);
    System.out.println("What should the BACK of the card be?");
    String n = scan.nextLine();
    return n;
  }
  
  public String getFrontOfCard() {
    
    return this.front;
}

  public String getBackOfCard() {
    
    return this.back;
}

 
}