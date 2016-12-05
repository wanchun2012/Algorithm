import Foundation

class Solution276 {
    
    init() {}
    
    func numWays(_ n: Int, _ k: Int) -> Int {
        if (n == 0) {
            return 0
        }
        if (n == 1) {
            return k
        }
        if (n == 2) {
            return k + k * (k - 1)
        }
        
        var sameColor = k
        var diffColor = k * (k - 1)
        for _ in 2 ... n - 1 {
            let tempDiff = diffColor
            diffColor = (sameColor + diffColor) * (k - 1)
            sameColor = tempDiff
        }
        
        return diffColor + sameColor
    }
}

let s = Solution276()
print("2 color 2 post -> \(s.numWays(2, 2))")

/*
 Notice:
 1) If not used in for loop, then use _ to avoid warning
 2) For loop from < to
 */
