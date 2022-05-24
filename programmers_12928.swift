// 2022.05.24
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12928

func solution(_ n:Int) -> Int {
    guard n != 0 else { return 0 }

    return Array(1...n).filter{ n % $0 == 0 }.reduce(0, +)
}

// Testcase
print(solution(12))  // > 28
print(solution(5))  // > 6
print(solution(0))  // > 0