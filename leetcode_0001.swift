// 2022.04.10
// Dongyoung Kwon (ehddud2468@gmail.com)
// https://leetcode.com/problems/two-sum/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()

    for (idx, num) in nums.enumerated() {
        if let last = dict[target - num] {
            return [last, idx]
        }
        dict[num] = idx
    }
    return []
}

// Testcase
// print(twoSum([2,7,11,15], 9))  // > [0, 1]