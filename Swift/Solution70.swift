import Foundation

class Solution70 {
    init() {}
    
    func climbStairs(_ n: Int) -> Int {
        var dp: [Int] = []
        if (n == 0) {
            return 0
        } else if (n == 1) {
            return 1
        } else if (n == 2) {
            return 2
        }
        
        dp.append(1)
        dp.append(2)
        
        for i in 2 ... n {
            dp.append(dp[i-1] + dp[i-2])
        }
        
        return dp.last!
    }
}


let s = Solution70()
print("Climbing Stairs: \(s.climbStairs(3))")
