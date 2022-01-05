import UIKit

func binarySearch<T: Comparable>(_ array: [T], searchElement: T, range: Range<Int>) -> Int? {
    if range.lowerBound >= range.upperBound {
        
        return nil

    } else {
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2

        // search left half
        if array[midIndex] > searchElement {
            return binarySearch(array, searchElement: searchElement, range: range.lowerBound ..< midIndex)

        // search right half
        } else if array[midIndex] < searchElement {
            return binarySearch(array, searchElement: searchElement, range: midIndex + 1 ..< range.upperBound)

        // found the element
        } else {
            return midIndex
        }
    }
}

let numbers = [4,12,23,38,43,56,67,77,85,98]

binarySearch(numbers, searchElement: 85, range: 0 ..< numbers.count)
