// Created by Puneet Kumar on 10/01/22.

func findDuplicates(arrData : inout [Int])
{
    let n = arrData.count-1
    var i = 0
    
    while i < n
    {
        let Positive = abs(arrData[i])
        if (arrData[Positive] > 0)
        {
            arrData[Positive] = -arrData[Positive]
        }
        else
        {
            print("The repeating elements are \(Positive)");
        }
        
        i += 1
    }
    
}

var arrDuplicates = [4, 2, 4, 5, 2, 3, 1]
findDuplicates(arrData: &arrDuplicates)



