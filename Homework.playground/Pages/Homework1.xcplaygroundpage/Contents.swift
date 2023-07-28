import Foundation

// MARK: Task 1

(0...100).forEach {
    if $0 % 2 == 0 {
        print($0)
    }
}

// MARK: Task 2

var a = 7
var b = 20

a * b > 10 ? print(a) : print(b)

// MARK: Task 3

var k = 9

for number in (10...50) {
    if number % 2 != 0 {
        if number + k % 2 == 0 {
            k += 2
        } else {
            print("Next")
            continue
        }
    }
}

// MARK: Task 4

var _k = 9

for number in (10...50) {
    if number % 2 != 0 {
        if number + _k % 2 == 0 {
            _k += 1
        } else {
            print("Next")
            break
        }
    }
}
