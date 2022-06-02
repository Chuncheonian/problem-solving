// 2022.06.02
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/7785

var dict = [String: Int]()

for _ in 1...Int(readLine()!)! {
    let i = readLine()!.split{ $0 == " " }.map{ String($0) }
    dict[i[0]] = i[1] == "enter" ? 1 : nil
}

dict.map{ $0.key }.sorted(by: >).forEach{ print($0) }