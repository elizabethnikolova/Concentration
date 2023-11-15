//
//  Card.swift
//  Concentration
//
//  Created by Stanimir Hristov on 7/15/18.
//  Copyright © 2018 Stanimir Hristov. All rights reserved.
//

import Foundation

struct Card : Hashable
{
    public var hashValue: Int { return identifier }
    
    public static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init(identifier: Int){
        self.identifier = Card.getUniqueIdentifier()
    }
}
