class Solution {
    func isPalindrome(_ s: String) -> Bool {
        if (s.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) == "" || s.characters.count == 1) {
            return true
        }
        let string = s.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted).joined(separator: "")
        let reversed = String(string.characters.reversed())
        return string == reversed
    }
}
