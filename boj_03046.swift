// 2022.05.26
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/3046

let n = readLine()!.split{ $0 == " " }.map{ Int(String($0))! } 
print(n[1]*2 - n[0])