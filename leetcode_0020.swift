// 2022.04.23
// Dongyoung Kwon (ehddud2468@gmail.com)
// https://leetcode.com/problems/valid-parentheses/

func isValid(_ s: String) -> Bool {
    var stack: [Character] = []
    let table: [Character: Character] = [
        "(": ")",
        "[": "]",
        "{": "}"
    ]

    for elem in s {
        if table[elem] != nil {
            stack.append(elem)
        } else {
            if let popped = stack.popLast(), elem == table[popped] {
                continue
            } else {
                return false
            }
        }
    }

    return stack.isEmpty
}


// Testcase
print(isValid("()"))  // > true
print(isValid("()[]{}"))  // > true
print(isValid("(]"))  // > false
print(isValid("]"))  // > false
print(isValid("){"))  // > false