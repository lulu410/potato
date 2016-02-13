//
//  Potato.swift
//  Potato
//
//  A lively Potato, with a definite meaning in life.
//  Will help real-life potatoes in their life scheduling
//
//  Created by Monica Ong on 2/13/16.
//  Copyright © 2016 Monica Ong. All rights reserved.
//

import UIKit

class Potato: NSObject {
    var schedule: [Event] = []
    var name: Name
    var mode: Mode
    
    enum Name: String {
        case Elbert = "Elbert"
        case Donovan = "Donovan"
        init(n:Name) {
            self = n
        }
    }

    enum Mode: String {
        case Bunny = "Bunny"
        case Tomato = "Tomato"
        init(mod:Mode) {
            self = mod
        }
    }
    
    init(mode: Mode, name:Name) {
        for index in 1...24 {
            let defaultEvent = Event(time: index, act: .Chill)
            self.schedule.append(defaultEvent)
        }
        self.name = name
        self.mode = mode
    }
    
    //Adds an Event to the schedule
    func addEvent(event:Event) {
        schedule[event.time] = event
    }
    
    //Deletes an Event
    //Sets the Event action to .Chill
    func deleteEvent(event:Event) {
        schedule[event.time].act = .Chill
    }
    
    //Changes the mode of the Potato
    func changeMode(mode:Mode) {
        self.mode = mode
    }
    
    //Changes the name of the Potato
    func changeName(name:Name) {
        self.name = name
    }
}

