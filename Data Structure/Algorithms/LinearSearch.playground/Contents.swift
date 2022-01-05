
// Created by Puneet Kumar on 05/01/22.

func linearSearchAlgorithm<element: Equatable>(_ arrSearched: [element], _ object: element) -> Int? {
    
  for (index, value) in arrSearched.enumerated() where value == object {
    return index
  }
  return nil
}

let array = [3, 12, 56, 49]
linearSearchAlgorithm(array, 49)     // This will return 1
