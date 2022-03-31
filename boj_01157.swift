// 2022.04.01
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1157

let str = Dictionary(readLine()!.uppercased().map{ ($0, 1) }, uniquingKeysWith: +)

var result = str.filter{ $0.value == str.values.max() }

print(result.count == 1 ? result.first!.key : "?")