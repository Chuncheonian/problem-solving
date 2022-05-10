// 2022.05.10
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1874

let n = Int(readLine()!)!
var stack = [Int]()
var arr = [Int]()
var arrHead = 0
var result = [String]()

for _ in 1...n {
    arr.append(Int(readLine()!)!)
}

for i in 1...n {
    stack.append(i)
    result.append("+")
    
    while !stack.isEmpty, stack.last! == arr[arrHead] {
        stack.removeLast()
        arrHead += 1
        result.append("-")
    }   
}

stack.isEmpty ? result.forEach{ print($0) } : print("NO")