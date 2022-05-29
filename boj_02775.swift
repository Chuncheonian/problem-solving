// 2022.05.29
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/2775

for _ in 1...Int(readLine()!)! {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!

    print(calc(k, n-1))
}

func calc(_ row: Int, _ col: Int) -> Int {
    if row == 0 { return col + 1 }
    if col == 0 { return 1 }
    return calc(row-1, col) + calc(row, col-1)
}