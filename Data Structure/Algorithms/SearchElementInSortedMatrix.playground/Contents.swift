
// Created by Puneet Kumar on 06/01/22.

func searchElementWithSortedMatrix(_ matrix: [[Int]],_ value: Int) -> Bool
    {
        var i = 0;
        let n = matrix.count
        var j = n-1
        
        while (i<n && j>=0)
        {
            if (matrix[i][j] == value)
            {
                return true
            }
            else if (matrix[i][j] > value)
            {
                j-=1
            }
            else
            {
                i+=1
            }
        }
        
        return false;
        
    }

    let matrix: [
        [Int]
    ] = [
        [3, 9, 20, 38, 42],
        [8, 14, 22, 39, 43],
        [11, 15, 28, 40, 46],
        [15, 20, 23, 45, 56],
        [28, 33, 41, 55, 68]
    ];
    searchElementWithSortedMatrix(matrix, 42);
    searchElementWithSortedMatrix(matrix, 41);

