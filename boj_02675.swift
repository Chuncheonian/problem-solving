// 2022.03.11
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2675

let t = Int(readLine()!)!

for _ in 1...t {
  let input = readLine()!.split(separator: " ")
  let r = Int(input[0])!
  let s = input[1].map{ $0 }
  for i in 0..<s.count {
    for _ in 1...r {
      print(s[i], terminator: "")
    }
  }
  print("")
}