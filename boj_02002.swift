// 2022.06.04
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/2002

let n = Int(readLine()!)!
var dict = [String: Int]()
var seq = Array(0...n)
var ans = 0
var cur = 1

(1...n).forEach { dict[readLine()!] = $0 }

for _ in 1..<n {
    if let ideal = dict[readLine()!], ideal != cur {
        ans += 1
        seq[ideal] = -1
    } else {
        cur += 1
        while seq[cur] == -1 { cur += 1 }
    }
}
_ = readLine()

print(ans)