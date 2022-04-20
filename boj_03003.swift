// 2022.04.21
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/3003


let nums = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let correctPiece = [1, 1, 2, 2, 2, 8]

for (i, v) in correctPiece.enumerated(){
    let answer = v - nums[i]
    print(answer, terminator: " ")
}