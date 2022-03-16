// 2022.03.17
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1110

var n = Array(readLine()!).map{ Int(String($0))! }
if n.count == 1 {
    n.append(0)
}

let original = n
var count = 0

repeat {
    count += 1
    let sum = n.reduce(0, +)
    n[0] = n[1]
    n[1] = sum % 10
} while original != n

print(count)