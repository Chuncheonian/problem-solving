// 2022.05.19
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12954

func solution(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map{ Int64($0 * x) }
}

// Testcase
print(solution(2, 5))  // > [2, 4, 6, 8, 10]
print(solution(4, 3))  // > [4, 8, 12]
print(solution(-4, 2))  // > [-4, -8]