class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let n = Array(s)
        var j = 0
        
        for i in t {
            if (j < n.count && n[j] == i){
                j += 1
            }

        }
        return (j == n.count)
    }
}