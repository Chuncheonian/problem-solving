// 2022.04.02
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2417

import Foundation

let n = UInt64(readLine()!)!

guard n != 0 else {
    print(0) 
    exit(0)
}

var lhs: UInt64 = 0
var rhs = UInt64(sqrt(Double(UInt64.max))) + 1
var answer: UInt64 = 0

while lhs <= rhs {
    let mid = lhs + (rhs - lhs) / 2

    if n <= mid * mid {
        answer = mid
        rhs = mid - 1
    } else {
        lhs = mid + 1
    }
}

print(answer)