//
//  main.swift
//  Animals_Swift
//
//  Created by Gabrielle Miller-Messner on 4/12/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation

// Initialize some animals
let babe = Pig()
let snoopy = GoldenDoodle()
let templeton = Rat()
let sinatra = Rat()
let cary = Pigeon()

// Initialize my dwellings with some animals
let myFarm = Farm(animals:[babe, snoopy, templeton])
let myApartment = Apartment(animals:[sinatra, cary, snoopy])

// Choose an animal to invoke a method
let randomNumber = Int(arc4random_uniform(3))
let farmAnimal = myFarm?.animals?[randomNumber]
let cityAnimal = myApartment?.animals?[randomNumber]

// Try to unwrap it as a rat
if let rat = farmAnimal as? Rat {
    rat.scurry()
} else {
    print("Not a rat, can't scurry!")
}

// Try to unwrap it as a pigeon
if let pigeon = cityAnimal as? Pigeon {
    pigeon.deliverMessage()
} else {
    print("Not a pigeon, can't deliver a message!")
}





