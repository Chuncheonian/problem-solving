// 2022.05.20
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12937

func solution(_ num: Int) -> String {
    return num.isMultiple(of: 2) ? "Even" : "Odd"
}

// Testcase
print(solution(3))  // > "Odd"
print(solution(4))  // > "Even"