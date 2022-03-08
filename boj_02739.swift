// 2022.03.08
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2739

let n = Int(readLine()!)!

(1...9).forEach {
  print("\(n) * \($0) = \(n * $0)")
}