// 2022.03.10
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2920

let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

if arr == arr.sorted() {
  print("ascending")
} else if arr == arr.sorted(by: >) {
  print("descending")
} else {
  print("mixed")
}