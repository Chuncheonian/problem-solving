// 2022.03.06
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2530

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var cookingTime = Int(readLine()!)!
var hour = input[0]
var min = input[1]
var sec = input[2]

var s1 = (sec + cookingTime) % 60
var m1 = (sec + cookingTime) / 60

var m2 = (min + m1) % 60
var h1 = (min + m1) / 60

var h2 = (hour + h1) % 24

print(h2, m2, s1)