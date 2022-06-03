// 2022.06.04
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/10870

func f(_ n: Int) -> Int {
    return n <= 1 ? n : f(n-1) + f(n-2)
}

print(f(Int(readLine()!)!))