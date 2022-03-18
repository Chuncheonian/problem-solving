// 2022.03.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/11724

import Foundation

var line = readLine()!.split(separator: " ").map( { Int($0)! })
let (n, m) = (line[0], line[1])
var adjacencyList: [[Int]] = Array(repeating: [], count: 1001)

for _ in 0..<m {
    line = readLine()!.split(separator: " ").map( { Int($0)! })
    let (v1, v2) = (line[0], line[1])
    
    adjacencyList[v1].append(v2)
    adjacencyList[v2].append(v1)
}

var visited: [Bool] = Array(repeating: false, count: 1001)

func dfs(start: Int) {
    visited[start] = true
    
    for i in 0..<adjacencyList[start].count {
        let next = adjacencyList[start][i]
        
        if visited[next] == false {
            dfs(start: next)
        }
    }
}

var count = 0
for i in 1...n {
    if visited[i] == false {
        dfs(start: i)
        count += 1
    }
}

print(count)