import Foundation

class Solution91 {
    init() {}
    
    func numDecodings(_ s: String) -> Int {
        let chars: [String] = s.characters.map { String($0) }
        print(chars)
        if (chars.count == 0) {
            return 0
        }
        
        var dp: [Int] = []
        dp.append(1)
        dp.append(chars[0] != "0" ? 1 : 0) // fist character
        
        if (chars.count < 2) {
            return dp.last!
        }
        
        for i in 2 ... chars.count {
            dp.append(0)
            let one = Int("\(chars[i-1])")!
            let two = Int("\(chars[i-2])\(chars[i-1])")!
            
            if (one >= 1 && one <= 9) {
                dp[i] = dp[i] + dp[i-1]
            }
            
            if (two >= 10 && two <= 26) {
                dp[i] = dp[i] + dp[i-2]
            }
        }
        
        return dp.last!
        
    }
    
}

var s = Solution91()
print(s.numDecodings("123"))

/*
 Notice:
 1) Uses.characters.map { String($0) } to get [String]
 2) Int(string) get an optional type
 */
 
