// 2022.04.03
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/9012

main: for _ in 1...Int(readLine()!)! {
    var stack = 0

    for parenthesis in Array(readLine()!) {
        if parenthesis == "(" {
            stack += 1
        } else {
            stack -= 1
        }
        if stack <= -1 {
            print("NO")
            continue main
        }
    }
    print(stack == 0 ? "YES" : "NO")
}