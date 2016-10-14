//
//  Interactive.swift
//  TipCalc
//
//  Created by Derek Fields on 10/11/16.
//  Copyright © 2016 Derek Fields. All rights reserved.
//

import Foundation

class Interactive {
    private var io = Io()
    private var done: Bool = false
    private var currentInput: String = "x"
    private var myTipCalc = TipCalculator()

    
    func go() {

        while !done {
            io.writeMessage("Type t to begin TIP CALCULATOR or q to quit...")
            currentInput = io.getInput()
           
            if currentInput == "q" {
                done = true
            } else if currentInput == "t" {
                let totalAmount = myTipCalc.calculateTotalAmount()
                io.writeMessage("The total amount = \(totalAmount)")
                

            } else {
                io.writeMessage("Invalid command")
            }
        }
    }
}
