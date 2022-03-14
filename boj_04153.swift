// 2022.03.14
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/4153

while true {
  var numbers = readLine()!.split(separator: " ").map{ Int(String($0))! * Int(String($0))! }

  if numbers.allSatisfy({ $0 == 0 }) {
    break
  }

  numbers.sort()
  print(numbers[0] + numbers[1] == numbers[2] ? "right" : "wrong")
}