class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        // var count = 0
        // var t = 0
        // for i in 0..<nums.count {
        //     if (nums[i] == 0){
        //         count += 1
        //     }else if (count > 0){
        //         t = nums[i]
        //         nums[i] = 0
        //         nums[i-count] = t
        //     }
        // }
        // Approach 2
        var count = 0
        var i = 0
        while i < nums.count - count {
            if nums[i] == 0 {
                count += 1
                nums.append(0)
                nums.remove(at: i)
            }else {
                i += 1
            }
        }
    }
}