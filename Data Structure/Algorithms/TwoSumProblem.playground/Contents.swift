  func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    // Write your code here.
        
        var dictPossibleMatch = [Int:Bool]()

        for number in array
        {
            let secondNumberRequired = targetSum - number
        
        if let exist = dictPossibleMatch[secondNumberRequired], exist
        {
             return [secondNumberRequired, number]
        }
        else
        {
            dictPossibleMatch[number] = true
        }
    }
        
    return []
  }

var arrTest =  [3, 5, -4, 8, 11, 1, -1, 6]
let targetSum = 10

twoNumberSum(&arrTest, targetSum)


