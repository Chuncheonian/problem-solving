// 2022.05.31
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/9093

for _ in 1...Int(readLine()!)! {
    print(readLine()!.split{ $0 == " " }.map{ String($0.reversed()) }.joined(separator: " "))
}