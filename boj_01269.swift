// 2022.05.30
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/1269

_ = readLine()!
var (a, b) = (Set<Int>(), Set<Int>())
readLine()!.split{ $0 == " " }.map{ Int(String($0))! }.forEach{ a.insert($0) }
readLine()!.split{ $0 == " " }.map{ Int(String($0))! }.forEach{ b.insert($0) }
print(a.symmetricDifference(b).count)