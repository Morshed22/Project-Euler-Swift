//
//  07-PrimeNumber.swift
//  Project-Euler
//
//  Created by Morshed Alam on 4/4/20.
//  Copyright © 2020 Morshed Alam. All rights reserved.
//

import Foundation

func getPrimeNumber(in num:Int){
    //104743
    

     let startTime = CFAbsoluteTimeGetCurrent()
 //those opn time complexity O(n2)
//    var primeNumbers = [2]
//    for i in stride(from: 3, to: Int.max, by: 2){
//        if !primeNumbers.contains{ p in i % p == 0 }{
//            primeNumbers.append(i)
//            if primeNumbers.count == num{
//                print(i)
//                print(primeNumbers.count)
//                break
//            }
//        }
//    }
   
//    let limit = num + 1
//    var notPrime = Set<Int>()
//    var primes = [2]
//    for i in stride(from: 3, to: limit, by: 2){
//        if notPrime.contains(i){
//            continue
//        }
//        for j in stride(from: i*3, to: limit, by: i*2){
//            notPrime.insert(j)
//        }
//        primes.append(i)
//    }
//    print(primes.count)
    
    
   
    //print(primes)
    
    
    
//https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
///////////////////////////////// Sieve Eratosthenes ////////////////////////////////////////////
    var dic:[Int:[Int]] = [:]
    var q = 2
    var count = 0
    var list = [Int]()
       
    while count < num {
        if dic[q] == nil{
            //when q is prime
            list.append(q)
            count += 1
            dic[q*q] = [q]
        }else{
            //when q is not prime
            for p in dic[q]!{
                dic[p+q] = [p] + (dic[p+q] ?? [])
            }
            dic[q] = nil
        }
        q += 1
    }
    print(list[num-1])
    
    
    
    
    
    let endTme = CFAbsoluteTimeGetCurrent()
    print(endTme - startTime)
}


