
 // Created by Puneet Kumar on 05/01/22.

import Foundation

func binarySearch<T: Comparable>(_ array: [T], searchElement: T) -> Int? {
    var lowerBound = 0
    var upperBound = array.count
    while lowerBound < upperBound {
        let midIndex = lowerBound + (upperBound - lowerBound) / 2
        if array[midIndex] == searchElement {
            return midIndex
        } else if array[midIndex] < searchElement {
            lowerBound = midIndex + 1
        } else {
            upperBound = midIndex
        }
    }
    return nil
}

let numbers = [4,12,23,38,43,56,67,77,85,98]

binarySearch(numbers, searchElement: 85)
