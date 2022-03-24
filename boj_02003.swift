// 2022.03.24
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2003

let nm = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let (n, m) = (nm[0], nm[1])
let arr = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
var (left, right, sum, result) = (0, 0, 0, 0)

while true {
    if sum >= m {
        if sum == m {
            result += 1
        }
        sum -= arr[left]
        left += 1
    } else {
        if right == n { break }
        sum += arr[right]
        right += 1
    }
}
print(result)