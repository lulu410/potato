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
    }
    var schedule: [Event] = []
    
    
    init(Schedule: [Event]) {
        
        for index in 1...24 {
            let defaultEvent = Event(time: index)
            schedule.append(defaultEvent)
        }
    }
}

