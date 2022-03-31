// 2022.03.31
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/16916

import Foundation

let (s, p) = (readLine()!, readLine()!)

print(kmpSearch(str: s, pattern: p))

func kmpSearch(str: String, pattern: String) -> Int {
    let s = Array(str)
    let p = Array(pattern)
    let failFunc = getFailFunc(pattern: p)
    var j = 0
    
    for i in 0..<s.count {
        while j > 0, s[i] != p[j] {
            j = failFunc[j - 1]
        }
        
        if s[i] == p[j] {
            if j == p.count - 1 {
                return 1
            } else {
                j += 1
            }
        }
    }
    return 0
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


// 2. 기존 풀이
// 시간초과
// print(readLine()!.contains(readLine()!) ? 1 :  0)