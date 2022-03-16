// 2022.03.17
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/13305

let n = Int(readLine()!)!

let roadArr = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }
let fuelArr = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }

var cost = 0
var minFuel = fuelArr[0]

for i in 0..<n-1 {
  if fuelArr[i] < minFuel {
    minFuel = fuelArr[i]
  }
  cost += minFuel * roadArr[i]
}

print(cost)