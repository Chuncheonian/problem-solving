// 2022.04.22
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/72412

import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {
    var result: [Int] = []
    var db: [String: [Int]] = [:]
    
    for s in info { 
        let infos = s.components(separatedBy: " ")
        let languages = [infos[0], "-"]
        let jobs = [infos[1], "-"]
        let careers = [infos[2], "-"]
        let soulFoods = [infos[3], "-"]
        let score = Int(infos[4])!

        for lang in languages {
            for job in jobs {
                for career in careers {
                    for food in soulFoods {
                        let key = "\(lang) \(job) \(career) \(food)"
                        if db.keys.contains(key) {
                            db[key]!.append(score)
                        } else {
                            db[key] = [score]
                        }
                    }
                }
            }
        }
    }

    for origin in db {
        let sortValue = origin.value.sorted()
        db[origin.key] = sortValue
    } 
    
    query.forEach {
        let excuteQuery = $0.components(separatedBy: " ")
        let lang = excuteQuery[0]
        let job = excuteQuery[2]
        let career = excuteQuery[4]
        let food = excuteQuery[6]
        let score = Int(excuteQuery[7])!
        let key = "\(lang) \(job) \(career) \(food)"
        
        if let matchScores = db[key] {
            var start = 0 
            var end = matchScores.count 
            
            while start < end { 
                let mid = start + (end - start) / 2 
                
                if matchScores[mid] >= score { 
                    end = mid 
                } else {
                    start = mid + 1
                }
            }
            result.append(matchScores.count - start)
        } else { 
            result.append(0)
        } 
    }
    return result
}

// Testcase
print(
    solution(
        ["java backend junior pizza 150","python frontend senior chicken 210","python frontend senior chicken 150","cpp backend senior pizza 260","java backend junior chicken 80","python backend senior chicken 50"],
        ["java and backend and junior and pizza 100","python and frontend and senior and chicken 200","cpp and - and senior and pizza 250","- and backend and senior and - 150","- and - and - and chicken 100","- and - and - and - 150"]
    )
)

// 효율성 통과 X

// func solution(_ info:[String], _ query:[String]) -> [Int] {
//     let info: [[String]] = info.map { $0.components(separatedBy: " ") }
//     let query: [[String]] = query.map{ $0.components(separatedBy: " ").filter{ $0 != "and" } }
//     var result = [Int]()

//     for q in query {
//         var localInfo = info

//         for i in 0..<q.count {
//             if q[i] == "-" { continue }

//             localInfo = i == 4 ? localInfo.filter{ Int($0[i])! >= Int(q[i])! } : localInfo.filter{ $0[i] == q[i] }
//         }
//         result.append(localInfo.count)
//     }
    
//     return result
// }