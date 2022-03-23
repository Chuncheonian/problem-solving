// 2022.03.23
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1789

var s = Int(readLine()!)!
var number = 1

while true {
    s -= number
    if s <= number { break }
    number += 1
}
print(number)