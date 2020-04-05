//
//  05-SmallestMultiple.swift
//  Project-Euler
//
//  Created by Morshed Alam on 4/4/20.
//  Copyright © 2020 Morshed Alam. All rights reserved.
//

import Foundation
 /*
 Returns the Greatest Common Divisor of two numbers.
 */
func gcd(_ x: Int, _ y: Int) -> Int {
    var a = 0
    var b = max(x, y)
    var r = min(x, y)
    
    while r != 0 {
        a = b
        b = r
        r = a % b
    }
    return b
}

/*
 Returns the least common multiple of two numbers.
 */
func lcm(_ x: Int, _ y: Int) -> Int {
    return x / gcd(x, y) * y
}

func smallestMultiple(){
       var lcmx = 1
    for value in 1...20{
           lcmx = lcm(lcmx, value)
       }
    print(lcmx)
}
