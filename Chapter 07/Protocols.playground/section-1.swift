import Cocoa

protocol Disappearing {
    mutating func makeVisible()
    mutating func makeInvisible()
}

protocol RegularQuadrilateral {
    var isSquare: Bool { get }
}

protocol Shape: Disappearing, RegularQuadrilateral {
    func area() -> Int
}

struct Square: Shape {
    let side: Int
    var isVisible: Bool

    var isSquare: Bool { return true }

    func area() -> Int {
        return side * side
    }

    mutating func makeVisible() {
        isVisible = true
    }

    mutating func makeInvisible() {
        isVisible = false
    }
}

func hideIfSquare(var quad: protocol<Disappearing, RegularQuadrilateral>) {
    if quad.isSquare {
        quad.makeInvisible()
    }
}

var square = Square(side: 10, isVisible: true)
square.isSquare
square.area()
square.isVisible
square.makeInvisible()
square.isVisible

extension String: RegularQuadrilateral {
    var isSquare: Bool { return false }
}

let s = "string"
s.isSquare

@objc protocol Transaction {
    func commit() -> Bool
    optional func isComplete() -> Bool
}

class DatabaseTransaction: Transaction {
    func commit() -> Bool {
        println("Commiting")
        return true
    }
}

let db: Transaction = DatabaseTransaction()
db.commit()
db.isComplete?()

@objc protocol Serializable {
    func serialize() -> String
}

class Rectangle: Serializable {
    let length: Int
    let width: Int

    init(length: Int, width: Int) {
        self.length = length
        self.width = width
    }

    func serialize() -> String {
        return "{length: \(length), width:\(width)"
    }
}

let items = [1, 2, 3, Rectangle(length: 4, width: 4), "5", Rectangle(length: 6, width: 6)]

for item in items {
    if let it = item as? Serializable {
        println(it.serialize())
    }
}

class Triangle: Serializable {
    let sideA: Int
    let sideB: Int
    let sideC: Int

    init(sideA: Int, sideB: Int, sideC: Int) {
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }

    func serialize() -> String {
        return "{sides: (\(sideA), \(sideB), \(sideC)}"
    }
}

let items2: [Serializable] = [Rectangle(length: 10, width: 10), Triangle(sideA: 4, sideB: 8, sideC: 16), Rectangle(length: 15, width: 25)]
let reps = items2.map({ $0.serialize() })
reps

protocol LowercaseString {
    var lowercaseString: String { get }
}

extension String: LowercaseString {}

let t = "the string"
t.lowercaseString
