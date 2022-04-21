// 2022.04.21
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/42888

import Foundation

func solution(_ record: [String]) -> [String] {
    var result = [String]()
    var idNicknameDict = [String: String]()
    
    record.forEach {
        let elem = $0.components(separatedBy: " ")
        if elem[0] == "Enter" || elem[0] == "Change" {
            idNicknameDict[elem[1]] = elem[2]
        }
    }
    
    record.forEach {
        let elem = $0.components(separatedBy: " ")
        if elem[0] == "Enter" {
            result.append("\(idNicknameDict[elem[1]]!)님이 들어왔습니다.")
        } else if elem[0] == "Leave" {
            result.append("\(idNicknameDict[elem[1]]!)님이 나갔습니다.")
        }
    }

    return result
}

// Testcase
print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))  // > ["Prodo님이 들어왔습니다.", "Ryan님이 들어왔습니다.", "Prodo님이 나갔습니다.", "Prodo님이 들어왔습니다."]