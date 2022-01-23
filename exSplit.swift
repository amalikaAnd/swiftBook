import Foundation

let line: String = readLine()!
let array = line.components(separatedBy: " ")
print(array)
let intArray = array.map { Int($0)!}
print(intArray)
