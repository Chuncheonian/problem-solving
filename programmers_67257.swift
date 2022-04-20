// 2022.04.21
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/67257

import Foundation

func calculator(_ nums: [Int], _ operators: [String], _ p: [String], _ opCountDict: [String: Int]) -> Int {
    var tmpNums = nums
    var tmpOps = operators
    
    for item in p {
        for _ in 1...opCountDict[item]! {
            findOperatorIndex(&tmpNums, &tmpOps, item)
        }
    }

    return abs(tmpNums[0])
}

func findOperatorIndex(_ nums: inout [Int], _ operators: inout [String], _ findOP: String) {
    for (idx, op) in operators.enumerated() {
        if op == findOP {
            if op == "+" {
                nums.insert(nums[idx] + nums[idx+1], at: idx+2) 
            } else if op == "-" {
                nums.insert(nums[idx] - nums[idx+1], at: idx+2)
            } else if op == "*" {
                nums.insert(nums[idx] * nums[idx+1], at: idx+2)
            }
            nums.remove(at: idx)
            nums.remove(at: idx)
            operators.remove(at: idx)
            break
        }
    }
}

func solution(_ expression: String) -> Int64 {
    let nums: [Int] = expression.components(separatedBy: ["*", "+", "-"]).map{ abs(Int($0)!) }
    let operators: [String] = Array(expression.filter{ Int(String($0)) == nil }.map{ String($0) })
    let opCountDict: [String: Int] = Dictionary(operators.map{ ($0, 1) }, uniquingKeysWith: +)

    var answer: Int = 0
    var priorities = [[String]]()
    
    if opCountDict.count == 3 {
        priorities = [["*", "+", "-"], ["*", "-", "+"], ["+", "*", "-"], ["+", "-", "*"], ["-", "*", "+"], ["-", "+", "*"]]
    } else if opCountDict.count == 2 {
        priorities = [opCountDict.keys.map{ String($0) }, opCountDict.keys.map{ String($0) }.reversed()]
    } else if opCountDict.count == 1 {
        priorities = [opCountDict.keys.map{ String($0) }]
    }

    for p in priorities {
        answer = max(answer, calculator(nums, operators, p, opCountDict))
    }
    
    return Int64(answer)
}

// Testcase
print(solution("100-200*300-500+20"))  // > 60420
// print(solution("50*6-3*2"))  // > 300
// print(solution("50*6*3*2"))  // > 1800