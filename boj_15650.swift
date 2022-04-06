// 2022.04.07
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/15650

func backtracking(_ start: Int = 1, _ count: Int = 0) {
    if count == m {
        stack.forEach{ print($0, terminator: " ") }
        print()
        return
    }

    for i in start...n {
        if visited[i] == false {
            stack.append(i)
            visited[i] = true
            backtracking(i, count+1)
            stack.removeLast()
            visited[i] = false
        }
    }
}

let nm = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }
let (n, m) = (nm[0], nm[1])

var stack = [Int]()
var visited = [Bool](repeating: false, count: n+1)

backtracking()