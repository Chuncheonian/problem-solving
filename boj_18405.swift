// 2022.03.20
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/18405

let nk = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }
let (n, k) = (nk[0], nk[1])
let (dr, dc) = ([0, -1, 0, 1], [1, 0, -1, 0])
var matrix = [[Int]]()
var queue = [(Int, Int, Int, Int)]()  // 바이러스 종류, 행 위치, 열 위치, 시간
for i in 0..<n {
    matrix.append(readLine()!.split{ $0 == " "}.map{ Int(String($0))! })
    for j in 0..<n {
        if matrix[i][j] != 0 {
            queue.append((matrix[i][j], i, j, 0))
        }
    }
}
queue.sort { $0.0 < $1.0 }

let sxy = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }
var (s, x, y) = (sxy[0], sxy[1], sxy[2])

var idx = 0
while idx < queue.count {
    let (virus, i, j, time) = queue[idx]
    idx += 1

    if time == s { break }

    for d in 0..<4 {
        let (ni, nj) = (i + dr[d], j + dc[d])

        if ni < 0 || ni >= n || nj < 0 || nj >= n { continue }

        if matrix[ni][nj] == 0 {
            matrix[ni][nj] = matrix[i][j]
            queue.append((virus, ni, nj, time+1))
        }
    }
}

print(matrix[x-1][y-1])