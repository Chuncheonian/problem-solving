// 2022.05.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12901

func calcWeek(_ day: Int) -> String {
    if day == 0 {
        return "SUN"
    } else if day == 1 {
        return "MON"
    } else if day == 2 {
        return "TUE"
    } else if day == 3 {
        return "WED"
    } else if day == 4 {
        return "THU"
    } else if day == 5 {
        return "FRI"
    } else {
        return "SAT"
    }
}

func solution(_ a: Int, _ b: Int) -> String {
    let tmp: [Int] = [0, 4, 0, 1, 4, -1, 2, 4, 0, 3, 5, 1, 3]
    return calcWeek((b + tmp[a]) % 7)
}

print(solution(5, 24))  // > TUE