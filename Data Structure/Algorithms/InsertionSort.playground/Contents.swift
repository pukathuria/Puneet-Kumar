
// Created by Puneet Kumar on 17/01/22.

func insertionSort(array: inout [Int]) -> [Int] {
  // Write your code here.
      
      for i in 0...array.count-1
      {
           for var j in stride(from: i, through: 1, by: -1)
          {
                  if (array[j] < array[j-1])
              {
                   array.swapAt(j, j-1)
                  j -= 1
              }
          }
      }
  return array
}

var arrTest = [8, 5, 2, 9, 5, 6, 3]
let arrResult = insertionSort(array: &arrTest)
