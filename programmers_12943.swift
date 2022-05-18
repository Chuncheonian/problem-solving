// 2022.05.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12943

func solution(_ num:Int) -> Int {
    var num: Int = num
    var count: Int = 0
    
    while num != 1 {
        if count == 500 {
            return -1
        }
        count += 1
        if num.isMultiple(of: 2) == true {
            num /= 2
        } else {
            num *= 3 
            num += 1
        }
    }
    return count
}

// Testcase
print(solution(6))  // > 8
print(solution(16))  // > 4
print(solution(626331))  // > -1