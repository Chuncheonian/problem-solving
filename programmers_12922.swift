// 2022.05.21
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12922

func solution(_ n:Int) -> String {
    var result: String = ""

    (1...n).forEach {
        result += $0.isMultiple(of: 2) ? "박" : "수"
    }

    return result
}

// Testcase
print(solution(3))  // > "수박수"
print(solution(4))  // > "수박수박"