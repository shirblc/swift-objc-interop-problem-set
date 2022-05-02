//
//  GuitarString.swift
//  Guitar
//
//  Created by Gabrielle Miller-Messner on 4/13/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import Cocoa


@objc enum GuitarError: Int, Error {
    case Broken = 1
    case OutOfTune
}

@objcMembers class GuitarString: NSObject {
    
    var broken: Bool = false
    var outOfTune: Bool = false
    
    func pluck(velocity: Float) throws {
        if broken {
            // can't play a broken string
            throw GuitarError.Broken
        }
        
        if outOfTune {
            // you can still play an out of tune string, this is just to illustrate another error type
            throw GuitarError.OutOfTune
        }
        
        // We're playing the string really hard.
        if velocity > 0.8 {
            if arc4random() % 2 == 0 {
                // We knocked the string out of tune. The next time we play, it will sound bad.
                outOfTune = true
            }
            
            if arc4random() % 2 == 1 {
                // We broke the string! This sounds bad when it happens, so throw an error right away.
                broken = true
                throw GuitarError.Broken
            }
        }
        
        print("twang 🎶")
    }
}
