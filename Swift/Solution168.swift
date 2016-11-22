 import Foundation
 
 class Solution168 {
    init() {
        
    }
    
    func convertToTitle(_ n: Int) -> String {
        return n == 0 ? "" :
            self.convertToTitle(n/26) + String(Character(UnicodeScalar((n-1)%26 + Int(("A" as UnicodeScalar).value))!))
    }
 }
 
 let s = Solution168()
 print("convertToTitle: \(s.convertToTitle(27))")