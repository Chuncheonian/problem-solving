// 2022.03.01
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2747

// import Foundation

let n: Int = Int(readLine()!)!

var dp = [0, 1]

if n >= 2 {
  for i in 2...n {
    dp.append(dp[i-1] + dp[i-2])
  }
}

print(dp[n])