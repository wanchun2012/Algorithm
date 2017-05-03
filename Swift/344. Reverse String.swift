class Solution {
    func reverseString(_ s: String) -> String {
        var charArray = Array(s.characters)
        var i = 0
        var j = charArray.count - 1
        
        while(i < j) {
            let temp = charArray[i]
            charArray[i] = charArray[j]
            charArray[j] = temp
            i = i + 1
            j = j - 1
        }
        return String(charArray)
    }
}
