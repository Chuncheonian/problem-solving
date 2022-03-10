// 2022.03.10
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2562

var maxNumber: Int = 0
var maxCount: Int = 1

for i in 1...9 {
  let n = Int(readLine()!)!

  if maxNumber < n {
    maxNumber = n
    maxCount = i
  }
}
print(maxNumber, maxCount, separator: "\n")