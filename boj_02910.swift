// 2022.06.06
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/2910

_ = readLine()
let n = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }  
var dict = [Int: (Int, Int)]()
var ans = ""

for (idx, elem) in n.enumerated() {
    if dict[elem] == nil {
        dict[elem] = (idx, 1)
    } else {
        dict[elem]!.1 += 1
    }
}

dict.sorted(by: { $0.value.1 > $1.value.1 || $0.value.1 == $1.value.1 && $0.value.0 < $1.value.0 })
.forEach{
    for _ in 1...$0.value.1 {
        ans += "\($0.key) "
    }
}

print(ans)