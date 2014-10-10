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
    var url:String = ""

    init(name:String, state:String, image:String, url:String) {
        self.name = name
        self.state = state
        self.image = image
        self.url = url
    }
}