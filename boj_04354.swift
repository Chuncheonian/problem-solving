// 2022.04.06
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/4354

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

while true {
    let s: [Character] = Array(readLine()!)
    if s == ["."] { break }

    let sCount = s.count
    let failFunc = makeFailFunc(pattern: s)

    if sCount % (sCount - failFunc[sCount - 1]) != 0 {  // 반례: bbabbab
        print(1)
    } else {
        print(sCount / (sCount - failFunc[sCount - 1]))
    }
}