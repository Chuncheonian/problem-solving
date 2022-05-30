// 2022.05.30
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/14425

let nm = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
var d = [String: Int]()
var answer = 0

for _ in 1...nm[0] {
    d[readLine()!] = 1
}

for _ in 1...nm[1] {
    answer += d[readLine()!] == nil ? 0 : 1
}

print(answer)