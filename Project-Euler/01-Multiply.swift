//
//  01.swift
//  Project-Euler
//
//  Created by Morshed Alam on 2/4/20.
//  Copyright © 2020 Morshed Alam. All rights reserved.
//

import Foundation
//Multiply
func getNumbers()->Int{
    var container = [Int]()
    for i in 0..<1000{
        if i%3 == 0 || i%5 == 0 {
            container.append(i)
        }
    }
    return container.reduce(0, +)
}

