// 2022.03.08
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10869

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

let a = input[0]
let b = input[1]

[a + b, a - b, a * b, a / b, a % b].map{ print($0) }
