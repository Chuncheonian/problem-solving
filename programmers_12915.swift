// 2022.05.20
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12915

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted {
        let lhs: Character = $0[$0.index($0.startIndex, offsetBy: n)]
        let rhs: Character = $1[$1.index($1.startIndex, offsetBy: n)]

        return lhs == rhs ? $0 < $1 : lhs < rhs
    }
}


// Testcase
print(solution(["sun", "bed", "car"], 1))  // > ["car", "bed", "sun"]
print(solution(["abce", "abcd", "cdx"], 2))  // > ["abcd", "abce", "cdx"]