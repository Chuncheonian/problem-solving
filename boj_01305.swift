// 2022.04.05
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1305

func makeFailFunc(pattern p: [Character]) -> [Int] {
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
    return failFunc
}

let _ = readLine()!
let str: [Character] = Array(readLine()!)
let failFunc = makeFailFunc(pattern: str)
print(str.count - failFunc[str.count - 1])