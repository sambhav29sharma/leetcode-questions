class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        
        guard nums.count >= 3 else {return false}

        var (small,mid) = (Int.max,Int.max)

        for n in nums {
            if n <= small {
                small = n
            }
            else if n <= mid {
                mid = n
            }
            else if n > mid {
                return true
            }
        }
        return false 
    }
}