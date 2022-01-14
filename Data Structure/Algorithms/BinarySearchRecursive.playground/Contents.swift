
// Created by Puneet Kumar on 14/01/22.

// Recursive solution

func binarySearch(array: [Int], target: Int) -> Int {

var initialvalue = 0
var endValue = array.count - 1
return recursiveSearch(array: array, target: target, startingPoint: &initialvalue, endPoint: &endValue)
}

func recursiveSearch(array: [Int], target: Int, startingPoint: inout Int, endPoint: inout Int)-> Int
{
while (startingPoint <= endPoint)
   {
let mid = (startingPoint + endPoint)/2
let midValue = array[mid]
if (target == midValue)
{
   return mid
}
else if(target < midValue)
{
    endPoint = mid - 1
}
else
{
       startingPoint = mid + 1
}
}
return -1
}

let arrSearch = [0, 1, 21, 33, 45, 45, 61, 71, 72, 73]

binarySearch(array: arrSearch, target: 33)
