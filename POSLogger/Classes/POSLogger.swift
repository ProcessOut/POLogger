//
//  POSLogger.swift
//  Pods
//
//  Created by Jeremy Lejoux on 10/07/2016.
//
//

import Foundation

public class POSLogger {
    
    private static var lineLenght = 70
    private static var padding = 5
    
    public class func StartLogBlock(name: String) {
        
        printLine("")
        printLine("")
        
        let spacing = (lineLenght - name.characters.count) / 2
        
        print("#", terminator: "")
        for _ in 0...spacing-2 {
            print(" ", terminator: "")
        }
        
        print(name, terminator: "")
        
        for _ in 0...spacing-2 {
            print(" ", terminator: "")
        }
        print("#")
        
        printLine("")
        drawLine()
    }
    
    public class func Log(title: String, message: String) {
        let lines = message.splitByLength(lineLenght - 2 - padding)
        
        printTitle(title)
        
        for line in lines {
            printLine(line)
        }
    }
    
    private class func printTitle(title: String) {
        printLine("")
        let upp = title.uppercaseString
        printLine(upp)
        printLine("")
    }
    
    private class func printLine(line: String) {
        print("#", terminator: "")
        let spacing = lineLenght - line.characters.count - padding
        
        for _ in 0...padding-2 {
            print(" ", terminator: "")
        }
        
        print(line, terminator: "")
        
        for _ in 0...spacing-2 {
            print(" ", terminator: "")
        }
        print("#")
    }
    
    public class func EndLogBlock() {
        printLine("")
        drawLine()
    }
    
    private class func drawLine() {
        for _ in 0...lineLenght-1 {
            print("#", terminator: "")
        }
        print("")
    }
}

extension String {
    func splitByLength(length: Int) -> [String] {
        var result = [String]()
        var collectedCharacters = [Character]()
        collectedCharacters.reserveCapacity(length)
        var count = 0
        
        for character in self.characters {
            collectedCharacters.append(character)
            ++count
            if (count == length) {
                // Reached the desired length
                count = 0
                result.append(String(collectedCharacters))
                collectedCharacters.removeAll(keepCapacity: true)
            }
        }
        
        // Append the remainder
        if !collectedCharacters.isEmpty {
            result.append(String(collectedCharacters))
        }
        
        return result
    }
}