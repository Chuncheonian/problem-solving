// 2022.05.31
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/11656

let s = readLine()!
var arr = [Substring]()

(1...s.count).forEach {
    arr.append(s.suffix($0))
}

arr.sorted().forEach{ print($0) }