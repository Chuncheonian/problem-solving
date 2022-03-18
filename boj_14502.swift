// 2022.03.19
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/14502

let nm = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }
let (n, m) = (nm[0], nm[1])
let (dr, dc) = ([0, -1, 0, 1], [1, 0, -1, 0])

var matrix = [[Int]]()
var queue = [(Int, Int)]()
for i in 0..<n {
    matrix.append(readLine()!.split{ $0 == " "}.map{ Int(String($0))! })

    for j in 0..<m {
        if matrix[i][j] == 2 {
            queue.append((i, j))
        }
    }
}

var maxArea = 0

func wall(_ cnt: Int = 0) {
    if cnt == 3 {
        let area = bfs()
        if area > maxArea {
            maxArea = area
        }
        return 
    }

    for i in 0..<n {
        for j in 0..<m {
            if matrix[i][j] == 0 {
                matrix[i][j] = 1
                wall(cnt+1)
                matrix[i][j] = 0
            }
        }
    }
}

func bfs() -> Int {
    var q = queue
    var board = matrix
    var idx = 0
    
    while idx < q.count {
        let (r, c) = q[idx]
        idx += 1

        for d in 0...3 {
            let (nr, nc) = (r + dr[d], c + dc[d])

            if nr < 0 || nr >= n || nc < 0 || nc >= m {
                continue
            }
            if board[nr][nc] == 0 {
                board[nr][nc] = 2
                q.append((nr, nc))
            }
        }
    }

    var area = 0
    for arr in board {
        area += arr.filter{ $0 == 0 }.count
    }
    return area
}

wall()
print(maxArea)


// My Original Solution

// let nm = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }
// let (n, m) = (nm[0], nm[1])

// var matrix = [[Int]]()

// for _ in 1...n {
//     matrix.append(readLine()!.split{ $0 == " "}.map{ Int(String($0))! })
// }

// let (dr, dc) = ([0, -1, 0, 1], [1, 0, -1, 0])

// func bfs(_ i: Int, _ j: Int, _ board: inout [[Int]], _ visited: inout [[Bool]]) {
//     visited[i][j] = true
//     var queue = [(i, j)]
//     var idx = 0
    
//     while idx < queue.count {
//         let (r, c) = queue[idx]
//         idx += 1

//         for d in 0...3 {
//             let (nr, nc) = (r + dr[d], c + dc[d])

//             if nr < 0 || nr >= n || nc < 0 || nc >= m {
//                 continue
//             }

//             if board[nr][nc] == 0 && visited[nr][nc] == false {
//                 visited[nr][nc] = true
//                 board[nr][nc] = 2
//                 queue.append((nr, nc))
//             }
//         }
//     }
// }

// var maxArea = 0

// for i in 0..<n {
//     for j in 0..<m {
//         var copy = matrix
//         if copy[i][j] == 0 {
//             copy[i][j] = 1

//             for ii in 0..<n {
//                 for jj in 0..<m {
//                     var copy2 = copy
//                     if copy2[ii][jj] == 0 {
//                         copy2[ii][jj] = 1

//                         for iii in 0..<n {
//                             for jjj in 0..<m {
//                                 var copy3 = copy2
//                                 if copy3[iii][jjj] == 0 {
//                                     copy3[iii][jjj] = 1
//                                     var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
//                                     for x in 0..<n {
//                                         for y in 0..<m {
//                                             if matrix[x][y] == 2 {
//                                                 bfs(x, y, &copy3, &visited)
//                                             }
//                                         }
//                                     }
//                                     var area = 0
//                                     for x in 0..<n {
//                                         for y in 0..<m {
//                                             if copy3[x][y] == 0 {
//                                                 area += 1
//                                             }
//                                         }
//                                     }
//                                     if area > maxArea {
//                                         maxArea = area
//                                     }
//                                     copy3 = copy2
//                                 }   
//                             }                            
//                         }
//                         copy2 = copy
//                     }
//                 }
//             }
//             copy = matrix
//         }
//     }
// }

// print(maxArea)