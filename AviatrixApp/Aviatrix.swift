//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//


import Foundation

class Aviatrix {
    var author = ""
    var data = AviatrixData()
    var location = "St. Louis"
    var distanceTraveled = 0
    var fuelLevel = 5000.0
    var maxFuel = 5000.0
    var milesPerGallon = 0.4
    
    
    init (authorName: String) {
        author = authorName
    }
    var running = false
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
   
    }
    
    func flyTo(destination : String) {
        distanceTraveled += data.knownDistances[location]![destination]!
        location = destination
        fuelLevel = fuelLevel - (Double(distanceTraveled) / milesPerGallon)
    }
    
    
    func distanceTo(target: String, location: String) -> Int {
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
