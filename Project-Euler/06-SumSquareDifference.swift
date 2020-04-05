//
//  SumSquareDifference.swift
//  Project-Euler
//
//  Created by Morshed Alam on 4/4/20.
//  Copyright © 2020 Morshed Alam. All rights reserved.
//

import Foundation

func SumDifference(n:Int){
    let squareOfSum =   Int(pow((Double((n*(n+1))/2)), 2.0))
    let sumOfSquares =  (n*(n+1) * (2*n + 1))/6
//    print(squareOfSum)
//    print(sumOfSquares)
    print(squareOfSum - sumOfSquares)
}
