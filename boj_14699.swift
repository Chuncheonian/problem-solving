// 2022.03.03
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/14699

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var heightArr = Array(readLine()!.split(separator: " ").map { Int(String($0))! })

// 단방향 그래프 생성
var adjacencyGraph: [[Int]] = Array(repeating: Array(), count: n+1)

for _ in 1...m {
  let vertexies = readLine()!.split(separator: " ").map { Int(String($0))! }
  let vertex1 = vertexies[0]
  let vertex2 = vertexies[1]

  if heightArr[vertex1 - 1] < heightArr[vertex2 - 1] {
    adjacencyGraph[vertex1].append(vertex2)
  } else {
    adjacencyGraph[vertex2].append(vertex1)
  }
}

// DP 접근법
var dp: [Int] = Array(repeating: 0, count: n+1)

func memoization(_ cur: Int) -> Int {
  if adjacencyGraph[cur].count == 0 {
    dp[cur] = 1
    return dp[cur]
  }

  // 이미 방문했으면
  if dp[cur] != 0 {
    return dp[cur]
  }

  for i in 0..<adjacencyGraph[cur].count {
    dp[cur] = max(dp[cur], memoization(adjacencyGraph[cur][i]) + 1)
  }
  return dp[cur]
}

for i in 1...n {
  memoization(i)
}

for i in 1...n {
  print(dp[i])
}