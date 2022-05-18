// 2022.05.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12950

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let (rowCnt, colCnt) = (arr1.count, arr1[0].count)

    var result: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: colCnt), count: rowCnt)

    for i in 0..<rowCnt {
        for j in 0..<colCnt {
            result[i][j] = arr1[i][j] + arr2[i][j]
        }
    }

    return result
}

// Testcase
print(solution([[1,2],[2,3]], [[3,4],[5,6]]))  // > [[4,6],[7,9]]
print(solution([[1],[2]], [[3],[4]]))  // > [[4],[6]]