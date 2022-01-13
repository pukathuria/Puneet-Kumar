  func kadanesAlgorithm(array: [Int]) -> Int {
    
        var maxSum = -Int.max;
        var currentSum = 0;
        let n = array.count
        for i in 0...n-1
    {
        currentSum = currentSum + array[i]
        if(currentSum > maxSum)
        {
            maxSum = currentSum
        }
        if(currentSum<0)
        {
            currentSum = 0
        }
    }
        
    return maxSum
  }

let arrTest = [3, 5, -9, 1, 3, -2, 3, 4, 7, 2, -9, 6, 3, 1, -5, 4]

kadanesAlgorithm(array: arrTest)


