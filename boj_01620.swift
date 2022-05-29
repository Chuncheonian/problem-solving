// 2022.05.29
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/1620

var nameNumDict = [String: Int]()
var numNameDict = [Int: String]()
let nm = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }

for i in 1...nm[0] {
    let name = readLine()!
    nameNumDict[name] = i
    numNameDict[i] = name
}

for _ in 1...nm[1] {
    let i = readLine()!
    if let number = Int(i) {
        print(numNameDict[number]!)
    } else {
        print(nameNumDict[i]!)
    }
}