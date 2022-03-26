// 2022.03.26
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10845

var q = [Int]()

for _ in 1...(Int(readLine()!)!) {
    let c = readLine()!.split{ $0 == " " }
    
    if c[0] == "push" { q.append(Int(c[1])!) }
    if c[0] == "pop" { print(q.isEmpty ? -1 : q.removeFirst()) }
    if c[0] == "size" { print(q.count) }
    if c[0] == "empty" { print(q.isEmpty ? 1 : 0) }
    if c[0] == "front" { print(q.isEmpty ? -1 : q.first!) }
    if c[0] == "back" { print(q.isEmpty ? -1 : q.last!) }
}