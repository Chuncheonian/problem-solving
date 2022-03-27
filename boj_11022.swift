// 2022.03.27
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/11022

for i in 1...Int(readLine()!)! {
    let n = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
    print("Case #\(i): \(n[0]) + \(n[1]) = \(n.reduce(0, +))")
}