// 2022.03.16
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/7569

let size = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let n = size[1]  // row
let m = size[0]  // col
let h = size[2]  // height

let dh = [0, 0, 0, 0, -1, 1]  // E N W S U D
let dr = [0, -1, 0, 1, 0, 0]
let dc = [1, 0, -1, 0, 0, 0]
var matrix = [[[Int]]]()
var queue = [(Int, Int, Int)]()  // (k, i, j)

for k in 0..<h {
  matrix.append([])
  for i in  0..<n {
    matrix[k].append(readLine()!.split{ $0 == " " }.map{ Int(String($0))! })

    for j in 0..<m {
      if matrix[k][i][j] == 1 {
        queue.append((k, i, j))
      }
    }
  }
}

func bfs() {
  var idx = 0

  while idx < queue.count {
    let (k, i, j) = queue[idx]  // Swift에선 queue가 지원안됨...
    idx += 1

    for d in 0..<6 {
      let nk = k + dh[d]
      let ni = i + dr[d]
      let nj = j + dc[d]

      if nk < 0 || nk >= h || ni < 0 || ni >= n || nj < 0 || nj >= m {
        continue
      }
      if matrix[nk][ni][nj] == 0 {
        matrix[nk][ni][nj] = matrix[k][i][j] + 1
        queue.append((nk, ni, nj))
      }
    }
  }
}

func solution() {
  var day = 0
  for k in 0..<h {
    for i in 0..<n {
      for j in 0..<m {
        if matrix[k][i][j] == 0 {
          print(-1)
          return
        }
        if matrix[k][i][j] > day {
          day = matrix[k][i][j]
        }
      }
    }
  }
  print(day - 1)
}

bfs()
solution()