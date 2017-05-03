class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanDict: [Character : Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var number = 0
        var charArray = Array(s.characters)
        for (i, char) in charArray.enumerated() {
            let currDigit = romanDict[char]!
            let nextDigit = i < charArray.count - 1 ? romanDict[charArray[i + 1]]! : 0
            if (currDigit >= nextDigit) {
                number = number + currDigit
            } else {
                number = number - currDigit
            }
        }
        return number
    }
}
