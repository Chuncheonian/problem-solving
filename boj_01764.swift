// 2022.05.29
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/1764

let nm = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
var dict: [String: Int] = [:]

for _ in 1...(nm[0] + nm[1]) {
    let name = readLine()!
    if dict[name] == nil {
        dict[name] = 1
    } else {
        dict[name] = dict[name]! + 1
    }
}

print(dict.filter{ $0.value == 2 }.count)
dict.filter{ $0.value == 2 }.sorted{ $0.key < $1.key }.forEach{ print($0.key)}