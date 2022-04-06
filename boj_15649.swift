// 2022.04.07
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/15649

func dfs(_ depth: Int) {
    if depth == m {
        print(stack.map{ String($0) }.joined(separator: " "))
        return
    }

    for i in 1...n {
        if visited[i] == false {
            stack[depth] = i
            visited[i] = true
            dfs(depth + 1)
            visited[i] = false
        }
    }
}

let nm = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let (n, m) = (nm[0], nm[1])

var stack = [Int](repeating: 0, count: m)
var visited = [Bool](repeating: false, count: n+1)

dfs(0)