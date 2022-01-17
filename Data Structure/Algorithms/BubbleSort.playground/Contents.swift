
// Created by Puneet Kumar on 17/01/22.

var arrTest = [8, 5, 2, 9, 5, 6, 3]

func bubbleSort(array: inout [Int]) -> [Int] {
    
    let n = array.count
    
    if (n>1)
    {
           for var i in 0...n-1
           {
               for var j in 0...n-2
               {
                    if (array[j] > array[j+1])
                   {
                       array.swapAt(j,j+1)
                   }
                       j += 1
               }
               i += 1
           }
    }
       return array
   }

bubbleSort(array: &arrTest)
