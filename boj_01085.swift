// 2022.05.29
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/1085

let i = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let (x, y, w, h) = (i[0], i[1], i[2], i[3])
print(min(x - 0, y - 0, h - y, w - x))