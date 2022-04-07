// 2022.04.07
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10773

var stack = [Int]()

for _ in 1...Int(readLine()!)! {
    let n = Int(readLine()!)!

    if n == 0 {
        stack.removeLast()
    } else {
        stack.append(n)
    }
}

print(stack.reduce(0, +))