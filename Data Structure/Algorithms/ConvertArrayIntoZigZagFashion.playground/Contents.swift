
//  Created by Puneet on 12/01/22.

var arrZigZag = [4, 3, 7, 8, 6, 2, 1]

func convertArrayIntoZigZagFashion(arrTemp: inout [Int])
{
    let n = arrTemp.count
    var flag = true
    for i in 0...n-2
    {
         if(flag == true)
        {
        if (arrTemp[i] > arrTemp[i+1])
        {
            arrTemp.swapAt(i, i+1)
        }
         }
        else
        {
        if (arrTemp[i] < arrTemp[i+1])
        {
            arrTemp.swapAt(i, i+1)
        }
        }
            flag = !flag
    }
}

convertArrayIntoZigZagFashion(arrTemp: &arrZigZag)
print(arrZigZag)




