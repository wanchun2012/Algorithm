import Foundation

class Solution376 {
    init() {}
    func wiggleMaxLength(_ nums: [Int]) -> Int {
        var dp: [[Int]] = []
        dp.append([0, 0])
        dp[0][0] =  1  // <0
        dp[0][1] =  1  // >0
        
        
        var best = 1
        for i in 1 ... nums.count - 1 {
            dp.append([1, 1])
            var j = 0
            while (j < i) {
                //print("i:\(nums[i]), j:\(nums[j])")
                if (nums[i] - nums[j] > 0) {
                    //print("\(dp[j][0])")
                    //print("\(dp[i][1])")
                    dp[i][1] = max(dp[j][0]+1, dp[i][1])
                }
                if (nums[i] - nums[j] < 0) {
                    //print("\(dp[j][1])")
                    //print("\(dp[i][0])")
                    dp[i][0] = max(dp[j][1]+1, dp[i][0])
                }
                j = j + 1
            }
            best = max(dp[i][1], dp[i][0])
        }
        
        return best
    }
}

var s = Solution376()
print(s.wiggleMaxLength([1,7,7,9,2,5]))
print(s.wiggleMaxLength([1,17,5,10,13,15,10,5,16,8]))
print(s.wiggleMaxLength([1,2,3,4,5,6,7,8,9]))
/* Notice
 dp[j][0/1]+1 will finally find the biggest one and add one,
 ap[i][0/1] is just keep load biggest number
 */
