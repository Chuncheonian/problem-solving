// 2022.06.02
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/1302

var d = [String: Int]()
for _ in 1...Int(readLine()!)! {
    let i = readLine()!
    d[i] = (d[i] ?? 0) + 1
}

print(d.sorted{ $0.value < $1.value || ($0.value == $1.value) && ($0.key > $1.key ) }.last!.key)