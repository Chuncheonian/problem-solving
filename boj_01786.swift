// 2022.03.31
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1786

import Foundation

func kmpSearch(str: String, pattern: String) -> [Int] {
    let s = Array(str)
    let p = Array(pattern)
    var result = [Int]()

    let failFunc = getFailFunc(pattern: p)
    var j = 0
    
    for i in 0..<s.count {
        while j > 0, s[i] != p[j] {
            j = failFunc[j - 1]
        }
        
        if s[i] == p[j] {
            if j == p.count - 1 {
                result.append(i - p.count + 2)
                j = failFunc[j]
            } else {
                j += 1
            }
        }
    }
    return result
}

func getFailFunc(pattern p: [Character]) -> [Int] {
    var failFunc = [Int](repeating: 0, count: p.count)
    var j = 0

    for i in 1..<p.count {
        while j > 0, p[i] != p[j] {
            j = failFunc[j-1]
        }
        if p[j] == p[i] {
            j += 1
        }
        failFunc[i] = j
    }
    return failFunc
}

let (t, p) = (readLine()!, readLine()!)
let answer = kmpSearch(str: t, pattern: p)

print(answer.count)
answer.forEach{ print($0) }