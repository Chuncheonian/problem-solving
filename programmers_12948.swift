// 2022.05.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12948

func solution(_ phone_number: String) -> String {
    if phone_number.count == 4 {
        return phone_number
    }
    
    var arr: [String] = Array(phone_number).reversed().map{ String($0) }

    for i in 4..<arr.count {
        arr[i] = "*"
    }
    
    return arr.reversed().joined()
}

// Testcase
print(solution("01033334444"))  // > "*******4444"
print(solution("027778888"))  // > "*****8888"
