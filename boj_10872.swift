// 2022.06.04
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/10872

func factorial(_ n: Int) -> Int {
    return n == 0 ? 1 : n * factorial(n-1)
}

print(factorial(Int(readLine()!)!))