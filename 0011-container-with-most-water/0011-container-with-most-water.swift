class Solution {
    func maxArea(_ height: [Int]) -> Int {
        // var left = 0
        // var right = height.count - 1
        // var maxArea = 0
        // var area = 0 
        // while (left < right){
        //     area = min(height[left], height[right]) * (right-left)
        //     maxArea = max(area,maxArea)
        //     if(height[left] < height[right]){
        //         left += 1
        //     }else {
        //         right -= 1
        //     }
        // }
        // return maxArea
        // Approach 2
        guard height.count > 2 else {return min(height[0],height[1])}
        var area = 0 , lhs = 0 , rhs = height.count - 1
        while lhs < rhs {
            area = max(area, min(height[lhs],height[rhs])*(rhs - lhs))
            height[lhs] < height[rhs] ? (lhs += 1) : (rhs -= 1)
        }
        return area
    }
}