// 2022.03.14
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2577

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

var multArr = Array(String(a * b * c)).map{ Int(String($0))! }
var result = [Int](repeating: 0, count: 10)

multArr.forEach { result[$0] += 1 }
result.forEach{ print($0) }