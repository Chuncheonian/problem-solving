// 2022.03.27
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/3052

var arr = Set<Int>()

for _ in 0...9 {
    arr.insert(Int(readLine()!)! % 42)
}

print(arr.count)