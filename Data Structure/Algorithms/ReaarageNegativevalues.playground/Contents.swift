// Created by Puneet Kumar on 08/01/22.

func reArrangeNegativeValues( rearrange: inout [Int])
{
    let n = rearrange.count-1
    var j = 0
    
    for i in 0...n
    {
        var temp = 0;
        if (rearrange[i] < 0)
            {
            if (i != j) {
            temp = rearrange[i];
            rearrange[i] = rearrange[j];
            rearrange[j] = temp;
            }
            j += 1
        }
        
    }
    
    print(rearrange)
    }

var arrTest = [ -1, 2, -3, 4, 5, 6, -7, 8, 9 ]
reArrangeNegativeValues(rearrange: &arrTest)

