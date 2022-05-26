// 2022.05.27
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10250

import Foundation

for _ in 1...Int(readLine()!)! {
    let hwn = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
    let (h, n) = (hwn[0], hwn[2])
    let height = (n - 1) % h + 1
    let width = (n - 1) / h + 1

    print("\(height)" + String(format: "%02d", width))
}