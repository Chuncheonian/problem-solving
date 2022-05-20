// 2022.05.20
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12903

func solution(_ s:String) -> String {
    let count: Int = s.count
    
    return count.isMultiple(of: 2)
    ? String(s[s.index(s.startIndex, offsetBy: count / 2 - 1)...s.index(s.startIndex, offsetBy: count / 2)])
    :String(s[s.index(s.startIndex, offsetBy: count / 2)])
}

// Testcase
print(solution("abcde"))  // > "c"
print(solution("qwer"))  // > "we"