class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        
        var leftProduct = Array(repeating: 1, count: nums.count)
        var rightProduct = Array(repeating: 1, count: nums.count)
        var answer = Array(repeating: 0, count: nums.count)
        
        for i in 1..<nums.count {
            leftProduct[i] = leftProduct[i-1]*nums[i-1]
        }
        for i in (0..<nums.count - 1).reversed(){
            rightProduct[i] = rightProduct[i+1]*nums[i+1]
        }
        for i in 0..<nums.count {
            answer[i] = leftProduct[i]*rightProduct[i]

        }
        return answer
    }
}