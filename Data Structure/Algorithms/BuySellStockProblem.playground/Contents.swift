// Created by Puneet Kumar on 10/01/22.

func maxProfit(_ prices: inout [Int]) -> Int {
    
    var maxProfit = 0
    var minIndex = prices.firstIndex(of: prices.min() ?? Int.max)

    // edge case handling
    if (minIndex == prices.count-1)
    {
        prices.removeLast()
    }
    if(prices.count>0)
    {
    let minvalue = prices.min() ?? Int.max
    let n = prices.count
     minIndex = prices.firstIndex(of: prices.min() ?? Int.max)
    var i = minIndex ?? 0

    while i<n
    {
        if (prices[i] - minvalue > maxProfit)
        {
            maxProfit = prices[i] - minvalue
        }
        i += 1
    }
    }

    return maxProfit

}

var arrProfit = [7, 1, 5, 3, 6, 4]
maxProfit(&arrProfit)
