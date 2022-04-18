// 2022.04.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/60058

import Foundation

func checkCorrectString(_ str: String) -> Bool {
    var cnt: Int = 0

    for elem in str {
        cnt += elem == "(" ? 1 : -1

        if cnt == -1 { return false }
    }
    return true
}

func separateString(_ str: String) -> (String, String) {
    var u: String = ""
    var v: String = ""
    var cnt: Int = 0
    
    for (idx, elem) in str.enumerated() {
        cnt += elem == "(" ? 1 : -1

        if cnt == 0 {
            u = String(str.prefix(idx+1))
            v = String(str.suffix(str.count-idx-1))
            break
        }
    }
    
    return (u, v)
}


func solution(_ p: String) -> String {
    if p.isEmpty { return "" }
    
    var result: String = ""

    if checkCorrectString(p) == true { return p }

    var (u, v) = separateString(p)
    
    if checkCorrectString(u) == true {
        return u + solution(v)
    }
    
    result += "("
    result += solution(v)
    result += ")"

    u.removeFirst()
    u.removeLast()
    
    result += u.map{ $0 == "(" ? ")" : "(" }

    return result    
}

// Testcase
print(solution("(()())()"))  // > (()())()
// print(solution(")("))  // > ()
// print(solution("()))((()"))  // > ()(())()