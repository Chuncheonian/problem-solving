// 2022.04.01
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2744

var result = ""

for char in readLine()! {
    char.isLowercase ? result.append(char.uppercased()) : result.append(char.lowercased())
}

print(result)