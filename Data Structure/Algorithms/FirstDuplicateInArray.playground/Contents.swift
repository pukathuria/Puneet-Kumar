
// Created by Puneet Kumar on 15/01/22.

//Other Solution --
//1. Brute Force: Time : O(n2)
//2. By taking Dict set: Time : O(n), Space: O(n)


// Best Optimal Approach: Time : O(n), Space: O(1)
func firstDuplicateValue(_ array: inout [Int]) -> Int {

    for value in array
       {
           let currentIndex = abs(value)
           if(array[currentIndex-1] < 0)
           {
               return abs(value)
           }
               array[currentIndex-1] = -array[currentIndex-1]
       }
           return -1
   }

var arrTest = [2, 1, 5, 2, 3, 3, 4]
let result = firstDuplicateValue(&arrTest)
