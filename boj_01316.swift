// 2022.05.31
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/1316

var answer = 0

loop: for _ in 1...Int(readLine()!)! {
    var a = [String]()
    var curCh = ""
    for c in readLine()!.map({ String($0) }) {
        if !a.contains(c) {
            a.append(c)
            curCh = c
        } else {
            if curCh != c {
                continue loop
            }
        }
    }
    answer += 1
}

print(answer)