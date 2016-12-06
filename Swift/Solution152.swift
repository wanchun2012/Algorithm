import Foundation

class Solution152 {
    init() {}
    
    func maxProduct(_ nums: [Int]) -> Int {
        if (nums.count == 0) {
            return 0
        }
        
        var maxSoFar = nums[0]
        var maxEndHere = nums[0]
        
        for i in 1 ... nums.count - 1 {
            maxEndHere = max(nums[i], maxEndHere + nums[i])
            maxSoFar = max(maxEndHere, maxSoFar)
        }
        
        return maxSoFar
    }
    
}

var s = Solution152()
print(s.maxProduct([2,3,-2,4]))
