// 2022.03.31
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2902

print(readLine()!.split{ $0 == "-" }.map{ String($0.first!) }.reduce("", +))