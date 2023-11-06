class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var count = 0
        var t = 0
        for i in 0..<nums.count {
            if (nums[i] == 0){
                count += 1
            }else if (count > 0){
                t = nums[i]
                nums[i] = 0
                nums[i-count] = t
            }
        }
    }
}