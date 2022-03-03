// 2022.03.03
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/9498

let score = Int(readLine()!)!

switch score {
case 90...100:
  print("A")
case 80...89:
  print("B")
case 70...79:
  print("C")
case 60...69:
  print("D")
default:
  print("F")
}