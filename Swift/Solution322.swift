import Foundation

class Solution322 {
    init() {}
    
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if (amount == 0) {
            return 0
        }
        
        if (coins.count == 0) {
            return -1
        }
        
        var dp: [Int: Int] = [:]
        for i in 1 ... amount {
            dp[i] = Int(UInt8.max)
            for coin in coins {
                if (coin == i) {
                    dp[i] = 1
                    break
                }
                
                if let count = dp[i - coin] {
                    dp[i] = min(dp[i]!, count + 1)
                }
            }
        }
        
        if (dp[amount]! == Int(UInt8.max)) {
            return -1
        }
        
        return dp[amount]!
    }
}

var s = Solution322()
print(s.coinChange([1, 2, 5], 11))

/* Notice
 1) UInt8.max get max Int
 2) [Int: Int] avoid optional value
 */
