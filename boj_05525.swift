// 2022.06.01
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/5525

let n = Int(readLine()!)!
let m = Int(readLine()!)!
let s = Array(readLine()!)

var i = 0
var cnt = 0
var ans = 0

while i < m-2 {
    if s[i] == "I", s[i+1] == "O", s[i+2] == "I" {
        i += 2
        cnt += 1
        if cnt == n {
            ans += 1
            cnt -= 1
        }
    } else {
        i += 1
        cnt = 0
    }
}

print(ans)