// 2022.05.09
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1966

for _ in 1...Int(readLine()!)! {
    let nm: [Int] = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
    let m: Int = nm[1]
    var idxPriorityArr: [(Int, Int)] = readLine()!.split{ $0 == " " }.enumerated().map{ ($0, Int(String($1))!) }
    var result: Int = 0

    while true {
        let max = idxPriorityArr.max(by: { $0.1 < $1.1 })!
        let first = idxPriorityArr.removeFirst()

        if first == max {
            result += 1
            if first.0 == m {
                print(result)
                break
            }
        } else {
            idxPriorityArr.append(first)
        }
    }
}