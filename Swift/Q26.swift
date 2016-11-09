class Solution { // Remove Duplicates from Sorted Array
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if (nums.count == 0 || nums.count == 1) {
            return nums.count
        }
        var sum = 1
        for i in 1 ... (nums.count-1) {
            if (nums[i-1] != nums[i]) {
                nums[sum] = nums[i]
                sum += 1
            }
        }
        return sum
    }
}
