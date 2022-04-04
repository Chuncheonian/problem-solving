// 2022.04.05
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1701

func makeFailFunc(_ p: [Character]) -> Int {
    var failFunc = [Int](repeating: 0, count: p.count)
    var j = 0
    
    for i in 1..<p.count {
        while j > 0, p[j] != p[i] {
            j = failFunc[j-1]
        }

        if p[j] == p[i] {
            j += 1
            failFunc[i] = j
        }
    }
    return failFunc.max()!
}

let str: [Character] = Array(readLine()!)
var result: Int = 0

for i in 0..<str.count {
    let sub: [Character] = Array(str[i..<str.count])
    result = max(result, makeFailFunc(sub))
}

print(result)