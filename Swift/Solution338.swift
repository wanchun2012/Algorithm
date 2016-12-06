import Foundation

class Solution338 {
    init() {}
    
    func countBits(_ num: Int) -> [Int] {
        var result: [Int] = []
        
        for var i in 0 ... num {
            var count = 0
            while (i > 0) {
                if (i & 1 == 1) {
                    count = count + 1
                }
                i = i >> 1
            }
            result.append(count)
        }
        
        return result
    }
}


let s = Solution338()
print("Climbing Stairs: \(s.countBits(5))")


/*
 Notice:
 1) & get a result Int type
 2) 3&1 == 1 we only compare the last digit
 */
