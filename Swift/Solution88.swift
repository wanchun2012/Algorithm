import Foundation

///88. Merge Sorted Array
class Solution88 {
    init() {
        
    }
    
    /**
     Merge sorted array nums2 into sorted array nums1
     
     - parameters:
     - nums1: First sorted array
     - m: Number of elements in nums1
     - nums2: Second sorted array
     - n: Number of elements in nums2
     
     - Important:
     nums1 has enough space,
     (size that is greater or equal to m + n)
     to hold additional elements from nums2
     */
    
    func merge(_ nums1: inout [Int?], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        var j = n - 1
        var k = m + n - 1
        
        while (i >= 0 && j >= 0) {
            if ((nums1[i] ?? 0) > nums2[j]) {
                nums1[k] = nums1[i]
                i = i - 1
            } else {
                nums1[k] = nums2[j]
                j = j - 1
            }
            k = k - 1
        }
        
        while (i >= 0) {
            nums1[k] = nums1[i]
            i = i - 1
            k = k - 1
        }
        
        while (j >= 0) {
            nums1[k] = nums2[j]
            j = j - 1
            k = k - 1
        }
        
    }
}

var s = Solution88()

var nums1: [Int?] = [1, 3, 4, 5, nil, nil]
let m = 4
let nums2: [Int] = [2, 6]
let n = 2

s.merge(&nums1, m, nums2, n)

nums1.forEach {
    if let num = $0 {
        print(num, terminator:",")
    }
}