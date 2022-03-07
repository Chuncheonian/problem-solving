// 2022.03.07
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/5063

let n = Int(readLine()!)!

for _ in 1...n {
  let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
  let r = input[0]
  let e = input[1]
  let c = input[2]

  if r < (e - c) {
    print("advertise")
  } else if r == (e-c) {
    print("does not matter")
  } else {
    print("do not advertise")
  }
}