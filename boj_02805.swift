// 2022.04.02
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2805

let nm = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let m = nm[1]
let treeHeights = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }

var (lhs, rhs) = (0, treeHeights.max()!)
var result = 0

while lhs <= rhs {
    let mid = lhs + (rhs - lhs) / 2

    let promising = treeHeights.map{ $0 > mid ? $0-mid : 0 }.reduce(0, +)

    if promising < m {
        rhs = mid - 1
    } else {
        lhs = mid + 1
        result = mid
    }
}

print(result)