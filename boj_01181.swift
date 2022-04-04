// 2022.04.04
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1181

var arr = [String]()

for _ in 1...Int(readLine()!)! {
    arr.append(readLine()!)
}

Set(arr).sorted{ $0.count == $1.count ? $0 < $1 : $0.count < $1.count }.forEach{ print($0) }