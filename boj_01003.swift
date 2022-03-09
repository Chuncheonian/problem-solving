// 2022.03.09
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1003

func fibonacci(_ n: Int) -> Void {
  var zero: [Int] = [1, 0]
  var one: [Int] = [0, 1]

  guard n > 1 else {
    print("\(zero[n]) \(one[n])")
    return
  }

  for i in 2...n {
    zero.append(zero[i - 1] + zero[i - 2])
    one.append(one[i - 1] + one[i - 2])
  }

  print("\(zero[n]) \(one[n])")
}

let count = Int(readLine()!)!

for _ in 1...count {
  let n = Int(readLine()!)!
  fibonacci(n)
}