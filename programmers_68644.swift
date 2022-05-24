// 2022.05.24
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/68644

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var set = Set<Int>()

    for i in 0..<(numbers.count-1) {
        for j in (i+1)..<numbers.count {
            set.insert(numbers[i]+numbers[j])
        }
    }
    return set.sorted()
}


// Testcase
print(solution([2, 1, 3, 4, 1]))  // > [2, 3, 4, 5, 6, 7]
print(solution([5, 0, 2, 7]))  // > [2, 5, 7, 9, 12]