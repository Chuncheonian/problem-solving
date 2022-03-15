// 2022.03.15
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1931

let n = Int(readLine()!)!

var conferenceArr = [(Int, Int)]()
for _ in 1...n { 
  let times = readLine()!.split(separator: " ").map{ Int(String($0))! }
  conferenceArr.append((times[0], times[1]))
}

conferenceArr.sort {
  if $0.1 == $1.1 {
    return $0.0 < $1.0
  }
  return $0.1 < $1.1
}

var current = 0
var confCount = 0
for conf in conferenceArr {
  if conf.0 >= current {
    current = conf.1
    confCount += 1
  }
}
print(confCount)