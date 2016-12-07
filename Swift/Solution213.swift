import Foundation

class Solution213 {
    init() {}
    
    func rob(_ nums: [Int]) -> Int {
        let l = nums.count
        
        return max(self.robHelper(nums[0..<l-1]), nums[0] + self.robHelper(nums[2..<l]))
    }
    
    private func robHelper(_ nums: [Int]) -> Int {
        
        var didRob = 0
        var didntRob = 0
        
        for num in nums {
            let curDidRob = didntRob + num
            let curDidntRob = max(didRob, didntRob)
            
            didRob = curDidRob
            didntRob = curDidntRob
        }
        
        return max(didRob, didntRob)
    }
}
