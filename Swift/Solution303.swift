import Foundation

class Solution303 {
    
    var nums: [Int] = []
    
    init() {}
    
    func NumArray(_ nums: inout [Int]) {
        for (index, num) in nums.enumerated() {
            if (index > 0) {
                nums[index] = nums[index-1] + num
            }
        }
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        var sum: [Int] = nums
        self.NumArray(&sum)
        if (i > 0) {
            return sum[j] - sum[i-1]
        }
        return sum[j]
    }
}

let s = Solution303()
s.nums = [-2, 0, 3, -5, 2, -1]
print("s.sumRange(0, 2) -> \(s.sumRange(0, 2))")
print("s.sumRange(2, 5) -> \(s.sumRange(2, 5))")
print("s.sumRange(0, 5) -> \(s.sumRange(0, 5))")
