// 2022.03.08
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10951

while let input = readLine() {
  print(input.split(separator: " ").map{ Int(String($0))! }.reduce(0, +))
}