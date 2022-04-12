class Solution {
    private let romanDict: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    
    func romanToInt(_ s: String) -> Int {
        var prev = 0, out = 0
        
        for index in s {
            let romanNumber = romanDict[index] ?? 0
            out += romanNumber <= prev ? prev : -prev
            prev = romanNumber
        }
        out += prev
        return out
    }

