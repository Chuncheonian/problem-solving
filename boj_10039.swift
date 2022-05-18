// 2022.05.19
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10039

var sum: Int = 0

for _ in 1...5 {
    let n: Int = Int(readLine()!)!
    sum += n >= 40 ? n : 40
}

print(sum / 5)