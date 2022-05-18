// 2022.05.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12947

func solution(_ x:Int) -> Bool {
    return x % String(x).map{ Int(String($0))! }.reduce(0, +) == 0
}

// Testcase
print(solution(10))  // > true
print(solution(12))  // > true
print(solution(11))  // > false
print(solution(13))  // > false