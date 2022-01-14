
let arrTest = [5, 1, 22, 25, 6, -1, 8, 10]
let arrSubSequence = [1, 6, -1, 10]


func isvalidSubsequence(arrTemp: [Int], arrTempSubSequence: [Int])-> Bool
{
    var i = 0
    var j = 0

        while i < arrTest.count, j < arrSubSequence.count
        {
        if(arrTest[i] == arrSubSequence[j])
        {
            j += 1
        }
 
        i += 1
        }
        return j == arrSubSequence.count
}


isvalidSubsequence(arrTemp:arrTest, arrTempSubSequence:arrSubSequence)

