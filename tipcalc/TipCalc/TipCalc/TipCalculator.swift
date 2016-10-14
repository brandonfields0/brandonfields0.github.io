//
//  TipCalculator.swift
//  TipCalc
//
//  Created by Derek Fields on 10/12/16.
//  Copyright © 2016 Derek Fields. All rights reserved.
//

import Foundation

class TipCalculator {
    
    var myIo = Io()
    
    
    func calculation(amount: Double, taxPercent: Double, tipPercent: Double) -> Double {
        let tax = amount * taxPercent
        let subtotal = tax + amount
        let tip = tipPercent * subtotal
        return tip + subtotal
    }
    
    func calculateTotalAmount() -> Double {
        print("Enter Bill Amount: ")
        let billString = myIo.getInput()
        let amount = Double(billString)!
        
        print("Tax percentage in decimal: ")
        let taxString = myIo.getInput()
        let taxPercent = Double(taxString)!
        
        print("Tip percentage in decimal: ")
        let tipString = myIo.getInput()
        let tipPercent = Double(tipString)!
        
        
        let totalAmount = calculation(amount: amount, taxPercent: taxPercent, tipPercent: tipPercent)
        
        return totalAmount
    }
}
