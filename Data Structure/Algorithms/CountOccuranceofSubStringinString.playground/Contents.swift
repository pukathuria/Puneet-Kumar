
// Created by Puneet Kumar on 06/01/22.

func occuranceOfTwoCharSubStringInString(fullString:String,substring:String) -> Int {
    
    let n = fullString.count
    var gCount = 0
    var occuranceCount = 0
    var i = n-1

    let arrString =    fullString.map({ String($0) })
    let arrSubString = substring.map({ String($0) })
        
    // arrSubString.count == 2 to handle index out of bound error
    while (i>=0 && arrSubString.count == 2) {
        if (arrString[i] == arrSubString[1])
        {
            gCount += 1
        }
        else if (arrString[i] == arrSubString[0])
        {
            occuranceCount = occuranceCount + gCount
        }
        
        i -= 1
    }
    
    return occuranceCount
}


occuranceOfTwoCharSubStringInString(fullString: "daggasdgdg", substring: "ag")


