// 2022.06.03
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/2776

for _ in 1...Int(readLine()!)! {
    var ans = ""
    _ = readLine()
    let n = Dictionary(readLine()!.split{ $0 == " " }.map{ (Int(String($0))!, 1) }, uniquingKeysWith: +)
    _ = readLine()
    readLine()!.split{ $0 == " " }.map{ Int(String($0))! }.forEach { ans += n[$0] == nil ? "0\n" : "1\n" }
    ans.removeLast()
    print(ans)
}