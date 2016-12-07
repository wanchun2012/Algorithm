import Foundation

class Solution96 {
    init() {}
    
    func numTrees(_ n: Int) -> Int {
        if (n <= 2) {
            return n
        }
        var dp: [Int] = []
        dp.append(1)
        dp.append(1)
        
        for i in 2 ... n {
            dp.append(0)
            for j in 0 ... i - 1 {
                dp[i] = dp[i] + (dp[j]*dp[i-j-1])
            }
        }
        return dp.last!
    }
    
}

var s = Solution96()
print(s.numTrees(3))
