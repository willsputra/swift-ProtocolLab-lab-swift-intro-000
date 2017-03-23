//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}


protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}

extension BankVault: ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        var returnValue = 0
        
        if password.isEmpty || password.count > 10 {
            returnValue = 0
        } else {
            for (index, items) in password.enumerated() {
                if (index == 0 || index % 2 == 0) {
                    if (items % 2 == 0) {
                        returnValue = 1
                    } else {
                        returnValue = 0
                        break
                    }
                }
                
                
            }
        }
        
        return returnValue == 1

    }
}
