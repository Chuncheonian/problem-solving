// 2022.03.15
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/11047

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
var k = input[1]

// 큰 가치로 정렬
var moneyTypes = [Int]()
for _ in 1...n {
  moneyTypes.append(Int(readLine()!)!)
}
moneyTypes.sort(by: >)


var count = 0
for type in moneyTypes {
  count += k / type
  k %= type
  
  if k == 0 {
    break
  }
}

print(count)