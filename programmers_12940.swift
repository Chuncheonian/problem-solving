// 2022.05.24
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12940

func solution(_ n:Int, _ m:Int) -> [Int] {

    func gcd(_ a: Int, _ b: Int) -> Int {
        let remain: Int = a % b
        return remain == 0 ? min(a, b) : gcd(b, remain)
    }

    func lcm(_ a: Int, _ b: Int) -> Int {
        return a * b / gcd(a, b)
    }

    return [gcd(n, m), lcm(n, m)]
}


// Testcase
print(solution(3, 12))  // > [3, 12]
print(solution(2, 5))  // > [1, 10]