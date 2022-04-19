// 2022.04.19
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1259

while let n = readLine(), n != "0" {
    let arr = Array(n)
    print(arr == arr.reversed() ? "yes" : "no")
}