// 2022.03.20
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/7562

let (dr, dc) = ([-2, -1, 1, 2, 2, 1, -1, -2], [1, 2, 2, 1, -1, -2, -2, -1])  // 12시부터 시계방향

for _ in 1...(Int(readLine()!)!) {
    let l = Int(readLine()!)!
    let start = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }
    let end = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }
    
    var board = [[Int]](repeating: [Int](repeating: 0, count: l), count: l)
    board[start[0]][start[1]] = 1
    var queue = [(start[0], start[1])]
    var idx = 0

    while idx < queue.count {
        let (i, j) = queue[idx]
        if (i, j) == (end[0], end[1]) {
            print(board[i][j] - 1)
            break
        }
        idx += 1

        for d in 0..<8 {
            let (ni, nj) = (i + dr[d], j + dc[d])

            if ni < 0 || ni >= l || nj < 0 || nj >= l { continue }

            if board[ni][nj] == 0 {
                board[ni][nj] = board[i][j] + 1
                queue.append((ni, nj))
            }
        }
    }
}