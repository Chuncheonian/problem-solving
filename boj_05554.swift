// 2022.05.20
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/5554

var sum = 0

for _ in 1...4 {
    sum += Int(readLine()!)!
}

print(sum / 60)
print(sum % 60)