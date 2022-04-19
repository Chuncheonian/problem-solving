// 2022.04.19
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1158

let nk = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let (n, k) = (nk[0], nk[1])

var queue = [Int](1...n)
var result = [Int]()
result.reserveCapacity(n)
var cnt: Int = k - 1

while true {
    result.append(queue.remove(at: cnt))
    if queue.isEmpty { break }
    cnt = (cnt + k - 1) % queue.count
}

print("<"+result.map{ String($0) }.joined(separator: ", ")+">")