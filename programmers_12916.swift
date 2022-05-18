// 2022.05.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12916

import Foundation

func solution(_ s: String) -> Bool {
    let s: String = s.lowercased()

    return s.filter{ $0 == "p" }.count == s.filter{ $0 == "y" }.count
}

// Testcase
print(solution("pPoooyY"))  // > true
print(solution("Pyy"))  // > false
