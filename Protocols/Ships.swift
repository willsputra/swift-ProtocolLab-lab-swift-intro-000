//
//  Ships.swift
//  Protocols
//
//  Created by Jim Campagno on 8/8/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//


enum Direction {
    case North, South, East, West
}


protocol SteerAbility {
    var direction: Direction { get set }
    mutating func steerInDirection(direction: Direction)
}

extension SteerAbility {
    mutating func steerInDirection(direction: Direction) {
        self.direction = direction
    }
}


class SailBoat: SteerAbility {
    
    var direction: Direction = .North
    
}

class RowBoat: SteerAbility {
    
    var direction: Direction = .North
}

class SteamBoat: SteerAbility {
    
    var direction: Direction = .North
}