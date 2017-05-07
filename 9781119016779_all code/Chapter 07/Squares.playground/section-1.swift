import Foundation

struct Square {
    var side: Double

    func area() -> Double {
        return side * side
    }
}

extension Square {
    mutating func updateArea(area: Double) {
        side = sqrt(area)
    }
}

var square = Square(side: 10)
square.area()
square.updateArea(1000)
square.area()
square.side

let square2 = Square(side: 100)
square2.updateArea(50)
