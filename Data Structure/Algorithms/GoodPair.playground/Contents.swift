
// Created by Puneet Kumar on 07/01/22.

func checkForGoodPair(arrCheck : [Int],value : Int)-> Int
{
    //Sort the Array
    let arrSorted = mergeSort(list: arrCheck)
    
    let n = arrCheck.count
    var i = 0
    var j = n-1
    
    
        // Two Pointer Approach
    while i<j
    {
        if(arrSorted[i] + arrSorted[j] == value)
        {
            return 1
        }
        else if(arrSorted[i] + arrSorted[j] < value)
        {
            i += 1
        }
        else if(arrSorted[i] + arrSorted[j] > value)
        {
            j -= 1
        }
    }

    return 0

}

let arrTest = [5,3,8,9,10]
let arrAnotherTest = [1,2,3,4]
let testValue = 12
let anotherTestValue = 9

func merge(left:[Int],right:[Int]) -> [Int] {
    var mergedList = [Int]()
    var left = left
    var right = right
    
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            mergedList.append(left.removeFirst())
        } else {
            mergedList.append(right.removeFirst())
        }
    }

    return mergedList + left + right
}

func mergeSort(list:[Int]) -> [Int] {
    guard list.count > 1 else {
        return list
    }
    
    let leftList = Array(list[0..<list.count/2])
    let rightList = Array(list[list.count/2..<list.count])
    
    return merge(left: mergeSort(list:leftList), right: mergeSort(list:rightList))
}

let value = checkForGoodPair(arrCheck: arrTest,value: testValue)
let anotherValue = checkForGoodPair(arrCheck: arrAnotherTest,value: anotherTestValue)





