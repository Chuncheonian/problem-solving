// 2022.05.21
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12930

import Foundation

func solution(_ s:String) -> String {
    return s
            .components(separatedBy: " ")
            .map {
                $0.enumerated().map {
                    $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased()
                    }
                }
            .map{ $0.joined() }
            .joined(separator: " ")
}


// Testcase
print(solution("try hello world"))  // > "TrY HeLlO WoRlD"