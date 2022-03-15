// 2022.03.15
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2753

let year = Int(readLine()!)!

print((year % 4 == 0 && year % 100 != 0) || year % 400 == 0 ? 1 : 0)