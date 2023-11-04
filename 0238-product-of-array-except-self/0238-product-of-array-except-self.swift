class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        
        var output = Array(repeating: 1, count: nums.count)
        var right = 1
        
        for i in 1..<nums.count {
            output[i] = output[i-1]*nums[i-1]
        }
        for i in (0..<nums.count ).reversed(){
            output[i] *= right
            right *= nums[i]
        }
        
        return output
    }
}