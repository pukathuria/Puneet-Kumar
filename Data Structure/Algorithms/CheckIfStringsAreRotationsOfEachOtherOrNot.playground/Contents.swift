// Created by Puneet Kumar on 11/01/22.

import UIKit

var testString = "ABCD"
var RotationString = "CDAB"

func optimaizedWayToCheckIfStringsAreRotationsOfEachOtherOrNot(strSample: String, strCampare: String)-> Int
{
    let Temp = strSample + strSample
    if(Temp .contains(strCampare))
    {
        return 1
    }
    else
    {
        return 0
    }
}

optimaizedWayToCheckIfStringsAreRotationsOfEachOtherOrNot(strSample: testString, strCampare: RotationString)



