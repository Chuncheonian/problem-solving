// 2022.04.28
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/4344

import Foundation

for _ in 1...Int(readLine()!)! {
    var arr = readLine()!.split{ $0 == " " }.map{ Double(String($0))! }
    let cnt = arr[0]
    arr.removeFirst()
    let average = arr.reduce(0, +) / cnt
    print(String(format: "%.3f", Double(arr.filter{ $0 > average }.count) / cnt * 100), "%", separator: "")
}