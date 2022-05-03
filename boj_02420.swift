// 2022.05.04
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2420

let n = readLine()!.split{$0==" "}.map{Int(String($0))!}
print(abs(n[0]-n[1]))