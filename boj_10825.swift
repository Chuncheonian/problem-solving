// 2022.03.19
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10825

let n = Int(readLine()!)!

var arr = [(String, Int, Int, Int)]()

for _ in 1...n {
    let student = readLine()!.split(separator: " ").map{ String($0) }
    arr.append((student[0], Int(student[1])!, Int(student[2])!, Int(student[3])!))
}

arr
    .sorted {
        if $0.1 == $1.1 {
            if $0.2 == $1.2 {
                if $0.3 == $1.3 {
                    return $0.0 < $1.0  // 4. 이름 사전순
                }
                return $0.3 > $1.3  // 3. 수학 내림차순
            }
            return $0.2 < $1.2  // 2. 영어 올림차순
        }
        return $0.1 > $1.1  // 1. 국어 내림차순
    }
    .forEach { print($0.0) }