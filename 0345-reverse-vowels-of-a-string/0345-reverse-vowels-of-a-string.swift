class Solution {
    func reverseVowels(_ s: String) -> String {
        var subArr = Array(s)
        let vowel : Set<Character> = ["a","e","i","o","u","A","E","I","O","U"]
        var leftPointer = 0
        var rightPointer = subArr.count - 1
        while leftPointer < rightPointer {
            if vowel.contains(subArr[leftPointer]) && vowel.contains(subArr[rightPointer]){
                subArr.swapAt(leftPointer, rightPointer)
                leftPointer += 1
                rightPointer -= 1
            }else if vowel.contains(subArr[leftPointer]){
                rightPointer -= 1
            }else if vowel.contains(subArr[rightPointer]){
                leftPointer += 1
            }else {
                leftPointer += 1
                rightPointer -= 1
            }
        }
        return String(subArr)
    }
}