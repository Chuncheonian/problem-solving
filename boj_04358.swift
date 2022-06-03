// 2022.06.03
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/4358

import Foundation

var d = [String: Double]()
var cnt: Double = 0
while let n = readLine() {
    d[n] = (d[n] ?? 0) + 1
    cnt += 1
}
d.map{ ($0.key, String(format: "%.4f", $0.value / cnt * 100)) }.sorted{ $0.0 < $1.0 }.forEach{ print($0.0, $0.1) }