class Solution {
    func reverseWords(_ s: String) -> String {
        var ans = s.split(separator : " ")
        var start = 0
        var end = ans.count - 1
        while start < end {
            ans.swapAt(start,end)
            start += 1
            end -= 1

        } 
        return ans.joined(separator : " ")
    }
}