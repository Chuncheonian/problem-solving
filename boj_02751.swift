// 2022.04.04
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2751

var arr = [Int]()

for _ in 1...Int(readLine()!)! {
    arr.append(Int(readLine()!)!)
}

arr.sorted().forEach{ print($0) }