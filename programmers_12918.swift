// 2022.05.19
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12918

func solution(_ s:String) -> Bool {
    return (s.count == 4 || s.count == 6) && Int(s) != nil
}

// Testcase
print(solution("a234"))  // > false
print(solution("1234"))  // > true