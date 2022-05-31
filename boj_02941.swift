// 2022.05.31
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/2941

import Foundation

var s = readLine()!

["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="].forEach {
    s = s.replacingOccurrences(of: $0, with: "t")
}

print(s.count)