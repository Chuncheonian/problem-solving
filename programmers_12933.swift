// 2022.05.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12933

func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted(by: >)))!
}

// Testcase
print(solution(118372))  // > 873211
