// 2022.05.20
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12969

import Foundation

let n = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let (a, b) = (n[0], n[1])

for _ in 1...b {
    print(Array(repeating: "*", count: a).joined())
}