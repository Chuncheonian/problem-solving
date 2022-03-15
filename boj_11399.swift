// 2022.03.15
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/11399

let n = Int(readLine()!)!
var arr = readLine()!
            .split(separator: " ")
            .map{ Int(String($0))! }
            .sorted()

for i in 1..<n {
  arr[i] += arr[i-1]
}

print(arr.reduce(0, +))