// 2022.05.19
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12932

func solution(_ n: Int64) -> [Int] {
    return String(n).reversed().map{ Int(String($0))! }
}

// Testcase
print(solution(12345))  // > [5, 4, 3, 2, 1]