// 2022.05.30
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/10815

let n = Int(readLine()!)!
var d = [Int: Int]()
readLine()!.split{ $0 == " " }.map{ Int(String($0))! }.forEach{ d[$0] = 1 }
let m = Int(readLine()!)!

readLine()!.split{ $0 == " " }.map{ Int(String($0))! }.forEach{ 
    print(d[$0] == nil ? 0 : 1, terminator: " ")
}