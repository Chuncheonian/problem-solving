// 2022.03.15
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/11724

let nm = readLine()!.split(separator: " ").map{ Int(String($0))! }
let vertexCount = nm[0]
let edgeCount = nm[1]

var adjacencyList = [[Int]](repeating: [], count: vertexCount+1)

for _ in 1...edgeCount {
  let edgeInfo = readLine()!.split(separator: " ").map{ Int(String($0))! }
  adjacencyList[edgeInfo[0]].append(edgeInfo[1])
  adjacencyList[edgeInfo[1]].append(edgeInfo[0])
}

var visited = [Int](repeating: 0, count: vertexCount + 1)

func bfs(_ start: Int) {
  var queue = [start]
  visited[start] = 1

  while queue.isEmpty == false {
    let vertex = queue.removeFirst()

    for next in adjacencyList[vertex] {
      if visited[next] == 0 {
        visited[next] = 1
        queue.append(next)
      }
    }
  }
}

var count = 0
for i in 1...vertexCount {
  if visited[i] == 0 {
    bfs(i)
    count += 1
  }
}

print(count)