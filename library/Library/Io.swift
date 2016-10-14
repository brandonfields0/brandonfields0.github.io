//
//  Io.swift
//  Library
//
//  Created by Derek Fields on 10/13/16.
//  Copyright © 2016 Derek Fields. All rights reserved.
//

import Foundation

class Io {
    func getInput()-> String {
        let keyboard = FileHandle.standardInput
        let inputData = keyboard.availableData
        
        let str = NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)
        
        if let string = str {
            return string.trimmingCharacters(in:CharacterSet.whitespacesAndNewlines)
        } else{
            return "Invalid input"
        }
    }
    func writeOutput(_ message:String){
        print("\(message)\n")
    }
}
