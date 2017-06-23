---
layout: post
title: Humans Orcs and Murlocs Oh My!
date: 2017-06-22 23:40
author: techenomics1
comments: true
categories: [Uncategorized]
---
Tonight I started putting together a straightforward text adventure game in order to experiment with classes, user interaction, and multi file projects.  It's a slight break from the java learning program I'm on now, but it's nice.  

```Java 

// Create classes: Enemy, Orc, Murloc, Boss
// Should there be a player/buddies class? (Probably)
// Loop to start program, move etc...
// Random rolls to hit/to miss, critical damage???



class Main {
	
	public static void main(String[] args) {
		
		Enemy enem = new Enemy();
		
		System.out.println("The " + enem.getClassType() + " attacked you!");
		
		Orc orc = new Orc();
		System.out.println("The " + orc.getClassType() + " attacked you with their " + orc.getWeapon());

		System.out.println(orc.getEnemyCtr());
	}
}


// Enemy.Java

public class Enemy {
	
	private int health;
	private String classType;
	private String armor;
	private String weapon;
	private int armorBonus = 1;
	private int enemyCtr = 0;
	
	
	public Enemy() {
		
		health = 100;
		classType = "Human";
		armor = "Leather";
		weapon = "Sword";
		enemyCtr++;
	}
	
	//  Getters and setters 
	
	// Health
	public int getHealth() {
		
		return health;
	}
	
	public void setHealth(int h) {
		
		this.health = h;
	}
	
	
	// ClassType
	public String getClassType() {
		
		return classType;
	}
	
	public void setClassType(String classType) {
		
		this.classType = classType; 
	}
	
	// Armor 
	public String getArmor() {
		
		return armor;
	}
	
	public void setArmor(String armor) {
		
		this.armor = armor;
	}
	
	// Weapon
	public String getWeapon() {
		
		return weapon;
	}
	
	public void setWeapon(String weapon) {
		
		this.weapon = weapon;
	}
	
	// Armor Bonus 
	public int getArmorBonus() {
		
		return armorBonus;
	}
	
	public void setArmorBonus(int bonus) {
		
		this.armorBonus = bonus;
	}
	
	// Enemy Counter 
	public int getEnemyCtr() {
		
		return enemyCtr;
	}
	
	public void setEnemyCtr() {
		
		enemyCtr++;
	}
	
	
}

// Orc.Java

public class Orc extends Enemy {
	
	
		int armorBonus;
		
		public Orc() {
		
		setHealth(120);
		setClassType("Orc");
		setArmor("Chain");
		setWeapon("Mace");
		armorBonus = 2;
		setEnemyCtr();
		
	}
	
	
}

// Murloc.java

public class Murloc extends Enemy {
	
		public Murloc() {
		
		setHealth(60);
		setClassType("Murloc");
		setArmor("None");
		setWeapon("Spear");
		setEnemyCtr();
	}
	
}

```
