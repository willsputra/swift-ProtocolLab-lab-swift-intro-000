//
//  ShipTests.swift
//  Protocols
//
//  Created by Jim Campagno on 8/8/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//


import Quick
import Nimble
@testable import Protocols

class ShipSpec: QuickSpec {
    override func spec() {
        
        describe("Direction enum") {
            it("Should have four cases, North, South, East and West") {
                
                let north = Direction.North
                let south = Direction.South
                let east = Direction.East
                let west = Direction.West
                
                expect(north).to(equal(Direction.North))
                expect(south).to(equal(Direction.South))
                expect(east).to(equal(Direction.East))
                expect(west).to(equal(Direction.West))
                
            }
        }
        
        describe("Default implementation of steerInDirection(_:)") {
            it("Should change the direction property to equal the direction argument passed into the function. This should be implemented within the extension on the SteerAbility protocol.") {
                
                // Creating a dummy class called LoveBoat which conforms to the SteerAbility protocol
                class LoveBoat: SteerAbility {
                    var direction: Direction = .North
                }
                
                var myLoveBoat = LoveBoat()
                
                myLoveBoat.steerInDirection(.West)
                
                expect(myLoveBoat.direction).to(equal(Direction.West))
                
            }
        }
        
        describe("SailBoat class") {
            it("Should have a direction property and be able to call on steerInDirection(_:)") {
                
                var mySailBoat = SailBoat()
                
                mySailBoat.steerInDirection(.East)
                
                expect(mySailBoat.direction).to(equal(Direction.East))
                
            }
        }
        
        describe("RowBoat class") {
            it("Should have a direction property and be able to call on steerInDirection(_:)") {
                
                var myRowBoat = RowBoat()
                
                myRowBoat.steerInDirection(.South)
                
                expect(myRowBoat.direction).to(equal(Direction.South))
                
            }
        }
        
        describe("SteamBoat class") {
            it("Should have a direction property and be able to call on steerInDirection(_:)") {
                
                var mySteamBoat = SteamBoat()
                
                mySteamBoat.steerInDirection(.West)
                
                expect(mySteamBoat.direction).to(equal(Direction.West))
                
            }
        }
    }
}