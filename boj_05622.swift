// 2022.05.31
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/5622

let dial = ["ABC", "DEF", "GHI", "JKL", "MNO", "PQRS", "TUV", "WXYZ"]
var answer = 0

for c in readLine()! {
    for (idx, elem) in dial.enumerated() {
        if elem.contains(c) {
            answer += (idx + 3)
        }
    }
}

print(answer)