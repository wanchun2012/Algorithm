import Foundation

class Solution121 {
    
    init() {}
    
    func maxProfit(_ prices: [Int]) -> Int {
        if (prices.count <= 1) {
            return 0
        }
        var min = prices[0]
        var profit = 0
        for i in 1 ... prices.count - 1 {
            if (prices[i] - min > 0) {
                profit = max(prices[i] - min, profit)
            } else {
                min = prices[i]
            }
        }
        
        return profit
    }
}

let prices = [1, 2, 4, 6, 2, 9]

let s = Solution121()
print("max profit -> \(s.maxProfit(prices))")

/*
 Notice:
 
 1) future price wont effect before you cannot buy in the future and sell previous
 */
