// 2022.04.02
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10816

let _ = readLine()!
let dict = Dictionary(readLine()!.split{ $0 == " " }.map{ ($0, 1) }, uniquingKeysWith: +)
let _ = readLine()!

var result = [Int]()

for elem in (readLine()!.split{ $0 == " " }) {
    result.append(dict.keys.contains(elem) ? dict[elem]! : 0)
}

print(result.map{ String($0) }.joined(separator: " "))