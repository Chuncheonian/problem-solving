// 2022.03.05
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/4101

while let input = readLine(), input != "0 0" {
  let values = input.split(separator: " ").map{ Int(String($0))! }

  print(values[0] <= values[1] ? "No" : "Yes")
}

// My Solution

// while true {
//   let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

//   if input[0] == 0 && input[1] == 0 {
//     break
//   }

//   print(input[0] <= input[1] ? "No" : "Yes")
// }