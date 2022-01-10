
func minimizeTheHeightOfTower(arrHeight: [Int], value: Int)
{
    var minOfArray : Int = 0
    var maxofArray : Int = 0
    minOfArray = arrHeight.min() ?? 0
    maxofArray = arrHeight.max() ?? 0
    
    let afterPossibleAdditionInMinOfArray = minOfArray + value
    let afterPossibleReductionInMaxOfArray = maxofArray - value
    
    let result = afterPossibleReductionInMaxOfArray - afterPossibleAdditionInMinOfArray
    print("difference between largest and smallest tower is \(result)")

}



let arrTower = [1, 5, 15, 10]
let arrTower2 = [1, 10, 14, 14, 14, 15]
let k = 3
let m = 6

//minimizeTheHeightOfTower(arrHeight: arrTower, value: k)
minimizeTheHeightOfTower(arrHeight: arrTower2, value: m)

