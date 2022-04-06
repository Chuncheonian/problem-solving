// 2022.04.07
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/15651

func backtracking(_ depth: Int = 0) {
    if depth == m {
        str += stack.map{ String($0) }.joined(separator: " ")
        str += "\n"
        return
    }

    for i in 1...n {
        stack.append(i)
        backtracking(depth+1)
        stack.removeLast()
    }
}

let nm = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let (n, m) = (nm[0], nm[1])

var stack = [Int]()
var str = ""

backtracking()
print(str)