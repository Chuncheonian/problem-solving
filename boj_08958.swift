// 2022.03.11
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/8958

for _ in 1...(Int(readLine()!)!) {
  print(
    readLine()!
      .split(separator: "X")
      .reduce(0) {
        $0 + ($1.count * ($1.count + 1) / 2)
      }
  )
}