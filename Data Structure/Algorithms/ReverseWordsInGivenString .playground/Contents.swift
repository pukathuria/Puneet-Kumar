//  Created by Puneet on 12/01/22.

func reverseWordsInGivenString(str: String)
{
    let strData =  str.split{ !$0.isLetter }

    let reverse = Array(strData.reversed())
    print(reverse)
    
}

reverseWordsInGivenString(str: "“i like this program very much")
