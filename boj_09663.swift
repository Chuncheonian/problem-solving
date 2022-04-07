// 2022.04.07
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/9663

func queens(_ cols: [Int], _ colIdx: Int = 0) {
    var cols = cols

    if colIdx == n {
        result += 1
        return
    }

    // row: queen을 row 위치에 둠
    for row in 0..<n {
        cols[colIdx] = row
        if promising(cols, colIdx) {
            queens(cols, colIdx+1)
        }
    }
}

func promising(_ cols: [Int], _ colIdx: Int) -> Bool {
    if colIdx < 1 { return true }  // queen을 하나만 둔 상태면 당연히 promising하다.

    for k in 0..<colIdx {  // k: 다른 col
        if cols[colIdx] == cols[k] || abs(cols[colIdx] - cols[k]) == (colIdx - k) {  // 같은 열 or 대각선인 경우
            return false
        }
    }
    return true
}

let n = Int(readLine()!)!
var cols = [Int](repeating: 0, count: n)
var result = 0
queens(cols)

print(result)