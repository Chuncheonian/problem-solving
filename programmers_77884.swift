// 2022.05.25
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/77884

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result: Int = 0

    for num in left...right {
        result += (1...num).filter{ num % $0 == 0 }.count.isMultiple(of: 2) ? num : -num
    }

    return result
}


// Testcase
print(solution(13, 17))  // > 43
print(solution(24, 27))  // > 52