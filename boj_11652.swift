// 2022.06.02
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/11652

var d: [Int: Int] = [:]

for _ in 1...Int(readLine()!)! {
    let n = Int(readLine()!)!
    d[n] = (d[n] ?? 0) + 1
}

print(d.sorted{ $0.value < $1.value || ($0.value == $1.value) && $0.key > $1.key }.last!.key)