// 2022.04.24
// Dongyoung Kwon (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/11382

print(readLine()!.split{ $0 == " " }.map{ Int(String($0))!}.reduce(0, +))