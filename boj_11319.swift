// 2022.05.09
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/11319

let vowels: [String] = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]

for _ in 1...Int(readLine()!)! {
    let str: [String] = Array(readLine()!).filter{ $0 != " " }.map{ String($0) }
    var vowelsCnt: Int = 0

    for char in str {
        if vowels.contains(char) {
            vowelsCnt += 1
        }
    }
    print(str.count - vowelsCnt, vowelsCnt)
}