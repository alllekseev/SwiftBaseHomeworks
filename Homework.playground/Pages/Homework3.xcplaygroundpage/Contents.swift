//: [Homework 2](@previous)

import Foundation

// MARK: Task 1

enum Teas: String {
    case black
    case green
    case white
    case oolong
}

let teas: [Teas : Int] = [.black: 100, .green: 150, .white: 200, .oolong: 250]
let queue: [Teas] = [.black, .green, .oolong, .white, .green, .oolong]
queue.enumerated().forEach { (index, tea) in
    print("Сustomer No.: \(index + 1), tea: \(tea), price: \(teas[tea] ?? -1)")
}

// MARK: Task 2

let arr =  [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
var newArr = arr.compactMap{$0}.filter{ $0 != 0 && $0 != 4 }.sorted{$0 < $1}
print(newArr)

// MARK: Task 3

func createArr(with elementsCount: Int) -> [Int] {
    var elem = 1
    var arr = [elem]
    (1..<elementsCount).forEach { number in
        elem *= 2
        arr.append(elem)
    }
    print(arr.count)
    return arr
}

print(createArr(with: 3))
//: [Homework 4](@next)
