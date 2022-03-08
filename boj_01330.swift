// 2022.03.08
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1330

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

print(input[0] > input[1] ? ">" : (input[0] < input[1] ? "<" : "==" ))