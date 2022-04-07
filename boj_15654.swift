// 2022.04.07
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/15654

func backtracking(_ depth: Int = 0) {
    if depth == m {
        stack.forEach{ print($0, terminator: " ") }
        print()
        return
    }

    for (i, elem) in nArr.enumerated() {
        if visited[i] == false {
            stack.append(elem)
            visited[i] = true
            backtracking(depth+1)
            stack.removeLast()
            visited[i] = false
        }
    }
}

let nm = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let (n, m) = (nm[0], nm[1])
let nArr = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }.sorted()

var stack = [Int]()
var visited = [Bool](repeating: false, count: n)

backtracking()