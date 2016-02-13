//
//  Potato.swift
//  Potato
//
//  Created by Monica Ong on 2/13/16.
//  Copyright © 2016 Monica Ong. All rights reserved.
//

import UIKit

class Potato: NSObject {
    enum Name: String {
        case Elbert = "Elbert"
        case Donovan = "Donovan"
        init(n:Name) {
            self = n
        }
    }
    
    var schedule: [Event] = []
    override init() {
        for index in 1...24 {
            let defaultEvent = Event(time: index)
            self.schedule.append(defaultEvent)
        }
    }
    
    enum Mode: String {
        case Bunny = "Bunny"
        case Tomato = "Tomato"
        init(mod:Mode) {
            self = mod
        }
    }
    
}

