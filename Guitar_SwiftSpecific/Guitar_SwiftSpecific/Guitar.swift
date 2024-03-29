//
//  Guitar.swift
//  Guitar
//
//  Created by Gabrielle Miller-Messner on 4/13/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import Cocoa

@objcMembers class Guitar: NSObject {
    let frets: [Fret]
    let strings: [GuitarString]
    
    // A guitar typically has 20-24 frets and 6 strings.
    init(frets: [Fret], strings: [GuitarString]) {
        self.frets = frets
        self.strings = strings
    }
    
    func stringForNote(note: Note) -> GuitarString {
        // TODO: logic to choose the correct string to play
        return strings[0]
    }
    
    func playNote(note: Note) throws {
        var string = stringForNote(note: note)
        try pluckString(string: &string, velocity: note.velocity)
    }
    
    func pluckString( string: inout GuitarString, velocity: Float) throws {
        // Pluck the note 
        try string.pluck(velocity: velocity)
    }
}

