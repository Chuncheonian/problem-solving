// 2022.05.24
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/76501

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return zip(absolutes, signs).map{ $1 ? $0 : -$0 }.reduce(0, +)
}


// Testcase
print(solution([4,7,12], [true,false,true]))  // > 9
print(solution([1,2,3], [false,false,true]))  // > 0