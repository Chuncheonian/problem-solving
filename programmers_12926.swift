// 2022.05.22
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12926

func solution(_ s:String, _ n:Int) -> String {

    return s.map {
        let ascii = Int(UnicodeScalar(String($0))!.value)
        if ascii >= 65, ascii <= 90 {
            return String(UnicodeScalar((ascii + n - 65) % 26 + 65)!)
        } else if ascii >= 97, ascii <= 122 {
            return String(UnicodeScalar((ascii + n - 97) % 26 + 97)!)
        } else {
            return " "
        }
    }.joined()
}


// Testcase
print(solution("AB", 1))  // > "BC"
print(solution("z", 1))  // > "a"
print(solution("a B z", 4))  // > "e F d"


// A 65 ~ Z 90
// a 97 ~ z 122