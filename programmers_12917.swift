// 2022.05.19
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12917

func solution(_ s:String) -> String {
    return String(s.sorted(by: >))
}

// Testcase
print(solution("Zbcdefg"))  // > "gfedcbZ"