// 2022.03.01
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/5355

import Foundation

let n: Int = Int(readLine()!)!

var result = [Double]()

for _ in 0..<n {
  let arr = readLine()!.split(separator: " ")
  var number = Double(arr[0])!

  for j in 1..<arr.count {
    if arr[j] == "@" {
      number *= 3
    } else if arr[j] == "%" {
      number += 5
    } else if arr[j] == "#" {
      number -= 7
    }
  }
  result.append(number)
}

for elem in result {
 print(String(format: "%.2f", elem))
}