// 2022.05.09
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/5217

for _ in 1...Int(readLine()!)! {
    let n: Int = Int(readLine()!)!
    var str: String = "Pairs for \(n): "
    var arr: [String] = []

    if n == 1 {
        print(str)
        continue
    }

    for i in 1...(n / 2) {
        if i != (n-i) {
            arr.append("\(i) \(n-i)")
        }
    }
    str += arr.joined(separator: ", ")
    print(str)
}