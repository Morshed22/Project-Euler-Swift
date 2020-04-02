//
//  04-LargestPalindrome.swift
//  Project-Euler
//
//  Created by Morshed Alam on 2/4/20.
//  Copyright © 2020 Morshed Alam. All rights reserved.
//

import Foundation


func findPalindromeNumber() {
    var answer = 0
    var k = 0
    for i in (100...999).reversed(){
      for j in (100...i).reversed() {
        k = i * j
       let s = String(k)
        if s == String(s.reversed()) && k > answer {
          answer = k
        }
      }
    }
    print(answer)
}
