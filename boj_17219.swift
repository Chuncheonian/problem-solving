// 2022.05.30
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/17219

let nm = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
var d: [String: String] = [:]

for _ in 1...nm[0] {
    let i = readLine()!.split{ $0 == " " }.map{ String($0) }
    d[i[0]] = i[1]
}

for _ in 1...nm[1] {
    print(d[readLine()!]!)
}