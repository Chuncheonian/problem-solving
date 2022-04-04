// 2022.04.04
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10814

var arr = [(Int, String)]()

for _ in 1...Int(readLine()!)! {
    let k = readLine()!.split{ $0 == " " }
    arr.append((Int(k[0])!, String(k[1])))
}

arr.sorted{ $0.0 < $1.0 }.forEach{ print("\($0.0) \($0.1)")}