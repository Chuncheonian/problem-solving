// 2022.05.29
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/19944

let i = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
print(["NEWBIE!", "OLDBIE!", "TLE!"][(i[1] > 2 ? 1 : 0) + (i[1] > i[0] ? 1 : 0)])