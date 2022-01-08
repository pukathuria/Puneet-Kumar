
// Created by Puneet Kumar on 08/01/22.

func SortAnArrayWithoutAnySortAlgo(arrSort: [Int])
{
    let n = arrSort.count
    var arrRefrence = arrSort
    var i = 0,countZero = 0,countOne = 0,countTwo = 0
    
    while i<n
    {
        switch (arrSort[i]) {
        case 0:
            countZero += 1
            i += 1
        case 1:
            countOne += 1
            i += 1
        case 2:
            countTwo += 1
            i += 1
        default:
            return
        }
    }
    
    i = 0
    
    while countZero>0
    {
        arrRefrence[i] = 0
        countZero -= 1
        i += 1
    }
    
    while countOne>0
    {
        arrRefrence[i] = 1
        countOne -= 1
        i += 1

    }
    while countTwo>0
    {
        arrRefrence[i] = 2
        countTwo -= 1
        i += 1

    }
}


let arrSort = [0,2,1,2,0]
SortAnArrayWithoutAnySortAlgo(arrSort: arrSort)
