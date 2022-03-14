// 2022.03.15
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/7576

func bfs() {
  while idx < queue.count {
    let (i, j) = queue[idx]
    idx += 1
    
    for k in 0...3 {
      let ni = i + dr[k]
      let nj = j + dc[k]

      if ni < 0 || ni >= n || nj < 0 || nj >= m {
        continue
      }

      if matrix[ni][nj] == 0 {
        matrix[ni][nj] = matrix[i][j] + 1
        queue.append((ni, nj))
      }
    }
  }
}

let size = readLine()!.split(separator: " ").map{ Int(String($0))! }
let m = size[0]  // col
let n = size[1]  // row

let dr = [0, -1, 0, 1]
let dc = [1, 0, -1, 0]
var matrix = [[Int]]()
var queue = [(Int, Int)]()
var idx = 0

for i in 0..<n {
  matrix.append(readLine()!.split(separator: " ").map{ Int(String($0))! })

  for j in 0..<m {
    if matrix[i][j] == 1 {
      queue.append((i, j))  // 익은 토마토 push
    }
  }
}

func solution() {
  var day = 0
  for i in 0..<n {
    for j in 0..<m {
      if matrix[i][j] == 0 { 
        print(-1)
        return
      }
      if matrix[i][j] > day {
        day = matrix[i][j]
      }
    }
  } 
  print(day-1)
}

bfs()
solution()