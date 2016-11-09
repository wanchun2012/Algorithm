class Solution { // Move Zeroes
    func moveZeroes(_ nums: inout [Int]) {
        var index = 0
        for num in nums {
            if (num != 0) {
                nums[index] = num
                index += 1
            }
        }
        while (index < nums.count) {
            nums[index] = 0
            index += 1
        }
    }
}