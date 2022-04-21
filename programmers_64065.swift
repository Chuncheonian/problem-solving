// 2022.04.21
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/64065

import Foundation

func solution(_ s: String) -> [Int] {
    var s = s
    var result = [Int]()
    
    s.removeFirst(2)
    s.removeLast(2)

    s.components(separatedBy: "},{")
        .map { $0.components(separatedBy: ",").map { Int(String($0))! } }
        .sorted { $0.count < $1.count }
        .forEach {
            $0.forEach {
                if result.contains($0) == false {
                    result.append($0)
                }
            }
        }

    return result
}

// Testcase
print(solution("{{2},{2,1},{2,1,3},{2,1,3,4}}"))  // > [2, 1, 3, 4]
//print(solution("{{2,1},{2},{2,1,3},{2,1,3,4}}"))  // > [2, 1, 3, 4]
// print(solution("{{20,111},{111}}"))  // > [111, 20]
// print(solution("{{123}}"))  // > [123]
// print(solution("{{4,2,3},{3},{2,3,4,1},{2,3}}"))  // > [3, 2, 4, 1]