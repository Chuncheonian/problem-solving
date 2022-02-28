// 2022.02.28
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2588

let a = Int(readLine()!)!
let b = Int(readLine()!)!

print(a * (b % 10))
print(a * ((b % 100) / 10))
print(a * (b / 100))
print(a * b)