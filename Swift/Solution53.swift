import Foundation

class Solution53 {
    init() {}
    
    func maxSubArray(_ nums: [Int]) -> Int {
        if (nums.count == 0) {
            return 0
        }
        
        var dp: [Int] = []
        dp.append(nums[0])
        var sum: Int = dp[0]
        
        for index in 1 ... nums.count - 1 {
            dp.append((dp[index - 1] < 0 ? 0 : dp[index - 1]) + nums[index])
            sum = max(dp[index], sum)
        }
        
        return sum
    }
}

var s = Solution53()
print(s.maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))
