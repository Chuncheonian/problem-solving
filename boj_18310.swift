// 2022.03.19
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/18310

let n = Int(readLine()!)!
var homes = readLine()!
            .split{ $0 == " " }
            .map{ Int(String($0))! }
            .sorted()

print(homes[(n-1) / 2])