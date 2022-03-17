// 2022.03.17
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2109

import Foundation

let n = Int(readLine()!)!

guard n != 0 else {
    print(0)
    exit(0)
}

var arr = [(Int, Int)]()  // [(p, d)]

for _ in 1...n {
    let req = readLine()!.split(separator: " ").map{ Int(String($0))! }
    arr.append((req[0], req[1]))
}

arr.sort{ $0.0 > $1.0 }  // p 내림차순 정렬
let maxDay = arr.sorted{ $0.1 > $1.1 }[0].1

var visited = [Bool](repeating: false, count: maxDay+1)
var answer = 0

for elem in arr {
    for i in (1...elem.1).reversed() {
        if visited[i] == false {
            visited[i] = true
            answer += elem.0
            break
        }
    }
}

print(answer)