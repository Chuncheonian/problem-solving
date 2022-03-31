// 2022.04.01
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10809

var result = [Int](repeating: -1, count: 26)

for (idx, char) in readLine()!.enumerated() {
    let insertIdx = Int(exactly: char.asciiValue!)! - 97
    if result[insertIdx] == -1 {
      result[insertIdx] = idx
    }
}

print(result.map{ String($0)}.joined(separator: " "))