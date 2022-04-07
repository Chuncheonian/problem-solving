// 2022.04.07
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/4949

mainLoop: while let str = readLine() {
    if str == "." { break }

    var stack = [Character]()

    for char in Array(str) {
        if char == "(" || char == "[" {
            stack.append(char)
        } else if char == ")" {
            if let last = stack.last {
                if last == "(" {
                    stack.removeLast()
                } else {
                    print("no")
                    continue mainLoop
                }
            } else {
                print("no")
                continue mainLoop
            }
        } else if char == "]" {
            if let last = stack.last {
                if last == "[" {
                    stack.removeLast()
                } else {
                    print("no")
                    continue mainLoop
                }
            } else {
                print("no")
                continue mainLoop
            }
        }
    }
    print(stack.count == 0 ? "yes" : "no")
}