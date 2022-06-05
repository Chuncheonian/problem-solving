// 2022.06.05
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/13414

let kl = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
var dict = [String: Int]()
var nums = [String]()

(0..<kl[1]).forEach { 
    let n = readLine()!
    dict[n] = $0 
    nums.append(n)
}

var cnt = 0

for i in 0..<kl[1] {
    if cnt >= kl[0] { break }
    
    if dict[nums[i]] == i {
        print(nums[i])
        cnt += 1
    }
}