// 2022.04.01
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1920

func binarySearch(arr: [Int], target: Int) -> Int {
    var (start, end) = (0, arr.count - 1)

    while start <= end {
        let mid = (start + end) / 2
        if arr[mid] == target {
            return 1
        } else if arr[mid] < target {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    return 0
}

let _ = Int(readLine()!)!
let a = readLine()!.split{ $0 == " "}.map{ Int(String($0))! }.sorted()
let _ = readLine()!

readLine()!.split{ $0 == " " }.map{ Int(String($0))! }.forEach{ print(binarySearch(arr: a, target: $0)) }


// 시간초과
// let _ = readLine()!
// let a = readLine()!.components(separatedBy: " ")
// let _ = readLine()!

// for char in readLine()!.components(separatedBy: " ") {
//     print(a.contains(char) ? 1 : 0)
// }
