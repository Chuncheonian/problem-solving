// 2022.04.02
// Dongyoung Kwon (ehddud2468@gmail.com)
// https://leetcode.com/problems/binary-search/

func search(_ nums: [Int], _ target: Int) -> Int {
    var (lhs, rhs) = (0, nums.count - 1)
        
    while lhs <= rhs {
        let mid = lhs + (rhs - lhs) / 2
            
        if nums[mid] == target {
            return mid
        }
        nums[mid] > target ? (rhs = mid - 1) : (lhs = mid + 1)
    }
    return -1
}

// print(search([-1,0,3,5,9,12], 9))  // > 4