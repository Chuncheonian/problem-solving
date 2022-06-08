// 2022.06.08
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/10807

_ = readLine()
print(Dictionary(readLine()!.split{$0 == " "}.map{ (String($0), 1) }, uniquingKeysWith: +)[readLine()!] ?? 0)