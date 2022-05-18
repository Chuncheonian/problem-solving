// 2022.05.19
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12912

func solution(_ a: Int, _ b:Int) -> Int64 {
    var (lhs, rhs) = (min(a, b), max(a, b))
    var result: Int = 0

    while true {
        result += lhs

        if lhs == rhs { break }
        lhs += 1
    }

    return Int64(result)
}

// Testcase
print(solution(3, 5))  // > 12
print(solution(3, 3))  // > 3
print(solution(5, 3))  // > 12