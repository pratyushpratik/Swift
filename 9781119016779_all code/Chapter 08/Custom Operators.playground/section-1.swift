import Foundation

infix operator ** { associativity left precedence 200 }

func ** (left: Int, right: Int) -> Int {
    return Int(pow(Double(left), Double(right)))
}

func ** (left: Double, right: Int) -> Double {
    return pow(left, Double(right))
}

func ** (left: Double, right: Double) -> Double {
    return pow(left, right)
}

2 ** 2
10 ** 2
10 ** 10

2.5 ** 2
10.4 ** 2
11.3 ** 10

2.5 ** 2.1
10.4 ** 2.6
11.3 ** 12.3

2 * 10 ** 2
2 * 10 ** 2 ** 2

2 ** 3 ** 4
