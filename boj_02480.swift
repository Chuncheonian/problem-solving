// 2022.04.27
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2480

let arr = Dictionary(readLine()!.split{ $0 == " " }.map{ (Int(String($0))!, 1) }, uniquingKeysWith: +)
var result: Int = 0

if arr.count == 1 {
    result = arr.keys.first! * 1000 + 10000
} else if arr.count == 2 {
    result = arr.filter{ $0.1 == 2 }.keys.first! * 100 + 1000
} else {
    result = arr.keys.max()! * 100
}

print(result)