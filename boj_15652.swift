// 2022.04.07
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/15652

func backtracking(_ depth: Int = 0) {
    if depth == m {
        stack.forEach{ print($0, terminator: " ") }
        print()
        return
    }

    let start = (depth == 0 ? 1 : stack[depth-1])

    for i in start...n {
        stack.append(i)
        backtracking(depth+1)
        stack.removeLast()
    }
}

let nm = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let (n, m) = (nm[0], nm[1])

var stack = [Int]()
backtracking()