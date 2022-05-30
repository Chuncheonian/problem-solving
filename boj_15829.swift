// 2022.05.30
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/15829

_ = readLine()
let s = readLine()!.map{ Int($0.asciiValue!) - 96 }
let mod = 1234567891
var (hash, m) = (0, 1)
for i in s {
    hash = (hash + i*m) % mod
    m = (m*31) % mod
}

print(hash)