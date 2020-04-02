//
//  02-Fibonacci.swift
//  Project-Euler
//
//  Created by Morshed Alam on 2/4/20.
//  Copyright © 2020 Morshed Alam. All rights reserved.
//

import Foundation

func fibonacci(n: Int) {
   var container = [Int]()
    var num1 = 0
    var num2 = 1

    for _ in 0 ..< n {
    
        let num = num1 + num2
        num1 = num2
        num2 = num
       
        if num2 > n {
        print(container.reduce(0, +))
            //print(container)
           break
        }else{
            if num2 % 2 == 0{
                container.append(num2)
            }
        }
    }
    
}
