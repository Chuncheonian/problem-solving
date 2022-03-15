// 2022.03.15
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/43162

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
  var visited = [Int](repeating: 0, count: n)
  var answer = 0

  for i in 0..<n {
    if visited[i] == 0 {
      bfs(n, computers, &visited, i)
      answer += 1
    }
  }
  return answer
}

func bfs(_ n: Int, _ matrix: [[Int]], _ visited: inout [Int], _ start: Int) {
  visited[start] = 1
  var queue = [start]

  while queue.isEmpty == false {
    let vertex = queue.removeFirst()
    
    for next in 0..<n {
      if vertex == next { 
        continue
      }
      if matrix[vertex][next] == 1 && visited[next] == 0 {
        visited[next] = 1
        queue.append(next)
      }
    }
  }
}



// Testcase
// print(solution(3, [[1, 1, 0], [1, 1, 0], [0, 0, 1]]))
// print(solution(3, [[1, 1, 0], [1, 1, 1], [0, 1, 1]]))