// 2022.03.25
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2525

let ab = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let c = Int(readLine()!)!
let (a, b) = (ab[0], ab[1])

print((a + (b + c) / 60) % 24, (b + c) % 60)