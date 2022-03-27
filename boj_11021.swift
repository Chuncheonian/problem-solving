// 2022.03.27
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/11021

for i in 1...Int(readLine()!)! {
    print("Case #\(i): \(readLine()!.split{ $0 == " " }.map{ Int(String($0))! }.reduce(0, +))")
}