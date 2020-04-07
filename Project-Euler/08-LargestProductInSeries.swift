//
//  08-LargestProductInSeries.swift
//  Project-Euler
//
//  Created by Morshed Alam on 7/4/20.
//  Copyright © 2020 Morshed Alam. All rights reserved.
//

import Foundation

extension String {
    func getCharAtIndex(_ index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}

func largestProductInSeries(str:String, n:Int){
    
    func slice(str:String, i:Int, n:Int)->Int{
        var prod = 1
        var j = 0
        while j < n {
            let char = str.getCharAtIndex(i + j)
            prod *= char.wholeNumberValue!
            j += 1
        }
        return prod
    }
    //start time
    let startTime = CFAbsoluteTimeGetCurrent()
    
    
    var prod = slice(str: str, i: 0, n: n);
    var maxp = prod;
    let i = n
    for i in stride(from: i, to: str.count - n, by: 1){
        let pre = str.getCharAtIndex(i - n)
        let cur = str.getCharAtIndex(i)
        
        if (pre != "0"){
            prod = prod * cur.wholeNumberValue! / pre.wholeNumberValue!;
        } else{
            prod = slice(str: str, i: i - n + 1, n: n);
        }
        maxp = max(prod, maxp);
    }
    
    print(maxp)
    
    //end Time
    let endTme = CFAbsoluteTimeGetCurrent()
    print(endTme - startTime)
    
}

//alternative soln 
func findLargest(str:String, n:Int){
    let startTime = CFAbsoluteTimeGetCurrent()
  var largest = 0
    var j = 0
  var res = 1
 
for i in stride(from:0, to: str.count-1, by: 1){
    res = res * str.getCharAtIndex(i).wholeNumberValue!
    print(" is is \(i) J is \(j) and res is \(res)")
    if(res == 0){
      res = 1
      j = 0
      continue
    }
    if(j == n-1){
      largest = max(largest, res)
      res = res/str.getCharAtIndex(i-j).wholeNumberValue!
        //print("i-j is \(i-j)")
        print("new res is \(res)")
      j = j - 1;
    }
    j = j + 1;
  }
  print(largest)
    let endTme = CFAbsoluteTimeGetCurrent()
    print(endTme - startTime)
}
