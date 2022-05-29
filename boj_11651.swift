// 2022.05.29
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/11651

var arr: [(Int, Int)] = [] 

for _ in 1...Int(readLine()!)! {
    let coordinate = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
    arr.append((coordinate[0], coordinate[1]))
}

arr.sorted{ 
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    }
    return $0.1 < $1.1
}.forEach {
    print($0.0, $0.1)
}