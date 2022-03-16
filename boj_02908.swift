// 2022.03.16
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2908

print(
  readLine()!
    .split{ $0 == " " }
    .map{ Int(String($0.reversed()))! }
    .max()!
)