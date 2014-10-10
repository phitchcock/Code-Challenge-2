//
//  City.swift
//  CodeChallengeTwo
//
//  Created by Peter Hitchcock on 10/10/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import Foundation

class City {
    var name:String = ""
    var state:String = ""
    var image:String = ""

    init(name:String, state:String, image:String) {
        self.name = name
        self.state = state
        self.image = image
    }
}