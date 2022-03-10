// 2022.03.10
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10818

let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
print(arr[0], arr[n-1])