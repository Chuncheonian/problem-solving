// 2022.04.29
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/15727

let n = Int(readLine()!)!
print(n / 5 + (n % 5 != 0 ? 1 : 0))