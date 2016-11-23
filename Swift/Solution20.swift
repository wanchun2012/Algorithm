import Foundation

extension String {
    var lettersOnly: String {
        return components(separatedBy: NSCharacterSet.letters.inverted).joined(separator: "")
    }
    
    var isPalindrome: Bool {
        return String(characters.reversed()).lettersOnly.lowercased() == lettersOnly.lowercased()
    }
}


let s = "A man, a plan, a canal: Panama"
print(s.isPalindrome)
