// 2022.06.01
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/11721

Array(readLine()!).enumerated().forEach {
    print($0.element, terminator: "")
    
    if $0.offset % 10 == 9 { 
        print()
    }
}