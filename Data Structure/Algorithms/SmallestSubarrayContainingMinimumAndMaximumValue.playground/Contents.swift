// Created by Puneet Kumar on 07/01/22.

func smallestSubarrayContainingMinimumAndMaximumValue(_ array: [Int]) -> Int {
    
    let n = array.count
    var i = 0
    let  minimum: Int? = array.min()
    let max: Int? = array.max()
    var lastIndexofMinValue = -1
    var lastIndexofMaxValue = -1
    var smallestLength = Int.max

    while i<n
    {
        if (array[i] ==  minimum!)
        {
            lastIndexofMinValue = i
            smallestLength = min(smallestLength, abs(i-lastIndexofMaxValue)+1)
            
        }
        else if (array[i] ==  max!)
        {
            lastIndexofMaxValue = i
            smallestLength = min(smallestLength, abs(i-lastIndexofMinValue)+1)
        }

        i += 1
    }
  
    return smallestLength;
}

let numbers = [3,2,1,6,8,4,2,1,3,4,7,8]
let testNumbers = [1, 5, 9, 7, 1, 9, 4]

smallestSubarrayContainingMinimumAndMaximumValue(numbers)
smallestSubarrayContainingMinimumAndMaximumValue(testNumbers)
