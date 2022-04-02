// 2022.04.03
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1654

let kn = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let (k, n) = (kn[0], kn[1])
var cables = [Int]()

for _ in 1...k {
    cables.append(Int(readLine()!)!)
}

var (lhs, rhs) = (1, cables.max()!)

while lhs <= rhs {
    let mid = lhs + (rhs - lhs) / 2
    let promising = cables.map{ $0 / mid }.reduce(0, +)

    if promising >= n {
        lhs = mid + 1
    } else {
        rhs = mid - 1
    }
    
}
print(rhs)