class Solution { // Two Sum
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hash: [Int : Int] = [:]
        var res:[Int] = []
        for (i, n) in nums.enumerated() {
            if let index = hash[target - n] {
                res.append(i)
                res.append(index)
                break
            }
            hash[n] = i
        }
        return res
    }
}

