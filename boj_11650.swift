// 2022.04.04
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/11650

var arr = [(Int, Int)]()

for _ in 1...Int(readLine()!)! {
    let k = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
    arr.append((k[0], k[1]))
}

arr.sorted{ $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0 }.forEach{ print("\($0.0) \($0.1)")}