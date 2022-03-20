// 2022.03.20
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1926

let nm = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }
let (n, m) = (nm[0], nm[1])
let (dr, dc) = ([0, -1, 0, 1], [1, 0, -1, 0])

var matrix = [[Int]]()
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
for _ in 0..<n {
    matrix.append(readLine()!.split{ $0 == " "}.map{ Int(String($0))! })
}

func bfs(_ i: Int, _ j: Int) -> Int{
    visited[i][j] = true
    var queue = [(i, j)]
    var idx = 0
    var area = 0

    while idx < queue.count {
        let (r, c) = queue[idx]
        idx += 1
        area += 1

        for d in 0...3 {
            let (nr, nc) = (r + dr[d], c + dc[d])

            if nr < 0 || nr >= n || nc < 0 || nc >= m { continue }

            if matrix[nr][nc] == 1 && visited[nr][nc] == false {
                visited[nr][nc] = true
                queue.append((nr, nc))
            }
        }
    }
    return area
}

var maxArea = 0
var count = 0
for i in 0..<n {
    for j in 0..<m {
        if matrix[i][j] == 1 && visited[i][j] == false {
            let area = bfs(i, j)
            if area > maxArea {
                maxArea = area
            }
            count += 1
        }
    }
}

print(count)
print(maxArea)