// 2022.04.26
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2798

let m: Int = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }[1]
let arr: [Int] = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let arrCount: Int = arr.count
var result: Int = 0

for first in 0..<(arrCount-2) {
    for second in (first+1)..<(arrCount-1) {
        for third in (second+1)..<arrCount {
            let sum = arr[first] + arr[second] + arr[third]
            if sum > m { continue }
            result = max(result, sum)
        }
    }
}

print(result)