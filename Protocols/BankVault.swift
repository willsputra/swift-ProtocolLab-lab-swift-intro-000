//
//  BankVault.swift
//  Protocols
//
//  Created by Jim Campagno on 8/8/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
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
    
    func allowEntryWithPassword(password: [Int]) -> Bool
    
}


extension BankVault: ProvideAccess {
    
    func allowEntryWithPassword(password: [Int]) -> Bool {
        guard !password.isEmpty && password.count <= 10 else { return false }
        
        for (index, digit) in password.enumerate() {
            
            guard index % 2 == 0 else { continue }
            
            if digit % 2 != 0 { return false }
            
        }
        
        return true
    }
    
}