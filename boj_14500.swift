// 2022.04.03
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/14500

let nm = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }
let (n, m) = (nm[0], nm[1])

var matrix = [[Int]]()
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
let (dr, dc) = ([0, -1, 0, 1], [1, 0, -1, 0])
let simul = [
    [(0, 1), (0, 2), (-1, 1)],
    [(0, 1), (0, 2), (1, 1)],
    [(1, 0), (2, 0), (1, 1)],
    [(0, 1), (-1, 1), (1, 1)]
]  // ㅗ ㅜ ㅏ ㅓ

for _ in 0..<n {
    matrix.append(readLine()!.split{ $0 == " "}.map{ Int(String($0))! })
}

var result = 0

func dfs(_ vertex: (Int, Int), _ value: Int, _ cnt: Int = 1) {
    let (r, c) = (vertex.0, vertex.1)

    if cnt == 4 {
        result = max(result, value)
        return
    }

    for k in 0...3 {
        let (nr, nc) = (r + dr[k], c + dc[k])

        if nr < 0 || nr >= n || nc < 0 || nc >= m { continue }

        if visited[nr][nc] == false {
            visited[nr][nc] = true
            dfs((nr, nc), value + matrix[nr][nc], cnt + 1)
            visited[nr][nc] = false
        }
    }
}

func simulation(_ vertex: (Int, Int), _ value: Int) {
    let (r, c) = (vertex.0, vertex.1)

    for shape in simul {
        var sum = value
        for (dr, dc) in shape {
            let (nr, nc) = (r + dr, c + dc)

            if nr < 0 || nr >= n || nc < 0 || nc >= m { continue }
            sum += matrix[nr][nc]
        }
        result = max(result, sum)
    }
}

for i in 0..<n {
    for j in 0..<m {
        visited[i][j] = true
        dfs((i, j), matrix[i][j])
        simulation((i, j), matrix[i][j])
        visited[i][j] = false
    }
}

print(result)