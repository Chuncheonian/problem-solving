// 2022.03.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/14503

let nm = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }
let (n, m) = (nm[0], nm[1])

let rcd = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }
var (r, c, d) = (rcd[0], rcd[1], rcd[2])
let dr = [-1, 0, 1, 0]  // N E S W
let dc = [0, 1, 0, -1]

var matrix = [[Int]]()
for _ in 1...n {
    matrix.append(readLine()!.split{ $0 == " "}.map{ Int(String($0))! })
}
matrix[r][c] = -1  // 현재위치 청소
var count = 1

mainLoop: while true {
    var flag = false

    forLoop: for _ in 1...4 {
        d = (d + 3) % 4
        let nr = r + dr[d]
        let nc = c + dc[d]

        if matrix[nr][nc] == 0 {
            matrix[nr][nc] = -1
            (r, c) = (nr, nc)
            count += 1
            flag = true
            break forLoop
        }
    }
    if flag == false {  // 4방향 청소 다 했으면
        if matrix[r - dr[d]][c - dc[d]] == 1 {  // 뒤에도 벽이면
            print(count)
            break mainLoop
        }
        r -= dr[d]
        c -= dc[d]
    }
}