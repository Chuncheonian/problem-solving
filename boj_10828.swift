// 2022.03.25
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10828

var stack = [Int]()

for _ in 1...(Int(readLine()!)!) {
    let command = readLine()!.split{ $0==" " }
    if command[0]=="push" {
        stack.append(Int(command[1])!)
    }
    if command[0]=="pop" {
        print(stack.isEmpty ? -1 : stack.popLast()!)
    }
    if command[0]=="size" { 
        print(stack.count)
    }
    if command[0]=="empty" {
        print(stack.isEmpty ? 1 : 0)
    }
    if command[0]=="top" {
        print(stack.isEmpty ? -1 : stack[stack.count-1])
    }
}