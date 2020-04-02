//
//  03-MaxPrimeNumber.swift
//  Project-Euler
//
//  Created by Morshed Alam on 2/4/20.
//  Copyright © 2020 Morshed Alam. All rights reserved.
//

import Foundation

func maxPrimeNumber(value:Int){
    var n = value
    var maxPrime = 0
    while (n % 2 == 0) {
            maxPrime = 2;
            // equivalent to n /= 2
              n = n >> 1
          }
    for i in stride(from: 3, to: sqrt(Double(n)), by: 2) {
        while (n % Int(i) == 0) {
            maxPrime = Int(i);
            n = n / Int(i);
        }
    }
    if (n > 2){
        maxPrime = n
    }
    print("max prime number is \(maxPrime)")
}

