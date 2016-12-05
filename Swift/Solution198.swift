import Foundation

class Solution198 {
    
    init() {}
    
    func rob(_ nums: [Int]) -> Int {
        var didRobCell = 0
        var didntRobCell = 0
        
        for num in nums {
            let currentRob = didntRobCell + num
            let currentntRob = max(didRobCell, didntRobCell)
            
            didntRobCell = currentntRob
            didRobCell = currentRob
        }
        
        return max(didntRobCell, didRobCell)
    }
}

let nums = [1, 2, 4, 6, 1]

let s = Solution198()
print("max rob -> \(s.rob(nums))")
