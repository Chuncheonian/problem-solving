// 2022.05.20
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12935

func solution(_ arr:[Int]) -> [Int] {
    var arr = arr

    if arr.count == 1 {
        return [-1]
    }
    arr.remove(at: arr.firstIndex(of: arr.min()!)!)
    return arr
}

// Testcase
print(solution([4,3,2,1]))  // > [4,3,2]
print(solution([10]))  // > [-1]