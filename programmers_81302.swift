// 2022.04.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/81302

import Foundation

func bfs(_ graph: [[Character]], _ visited: inout [[Bool]], _ start: (Int, Int), _ depth: Int = 0) -> Bool {
    let (dr, dc) = ([0, -1, 0, 1], [1, 0, -1, 0])
    var queue = [(start.0, start.1, depth)]
    var idx = 0

    while idx < queue.count {
        let (r, c, depth) = queue[idx]
        idx += 1
        for k in 0...3 {
            let (nr, nc, nd) = (r + dr[k], c + dc[k], depth + 1)
            if nr < 0 || nr >= 5 || nc < 0 || nc >= 5 || graph[nr][nc] == "X" { continue }
            
            if visited[nr][nc] == false {
                visited[nr][nc] = true
                
                if graph[nr][nc] == "P" {
                    return false
                }
                if nd == 1 {
                    queue.append((nr, nc, nd))
                }
            }
        }
    }
    return true
}

func solution(_ places: [[String]]) -> [Int] {
    var result = [Int](repeating: 1, count: 5)

    for (idx, place) in places.enumerated() {
        var matrix = [[Character]]()
        var visited = [[Bool]](repeating: [Bool](repeating: false, count: 5), count: 5)

        for elem in place {
            matrix.append(Array(elem))
        }
 
        mainLoop: for i in 0...4 {
            for j in 0...4 {
                if matrix[i][j] == "P", visited[i][j] == false {
                    visited[i][j] = true
                    if bfs(matrix, &visited, (i, j)) == false {
                        result[idx] = 0
                        break mainLoop
                    }
                }
            }
        }
    }
    return result
}

// Testcase
print(solution([["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"], ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"], ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"], ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"], ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]])) // > [1, 0, 1, 1, 1]