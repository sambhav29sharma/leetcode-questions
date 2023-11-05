class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        
        // guard nums.count >= 3 else {return false}

        // var (small,mid) = (Int.max,Int.max)

        // for n in nums {
        //     if n <= small {
        //         small = n
        //     }
        //     else if n <= mid {
        //         mid = n
        //     }
        //     else if n > mid {
        //         return true
        //     }
        // }
        // return false 
        // Approach 2
        var min1 = Int.max
        var min2 = Int.max

        for n in nums {
            if n > min2 {
                return true
             } else if n > min1 {
                 min2 = min(min2, n)
             } else {
                 min1 = min(min1, n)
             }
         }
         return false
    }
}