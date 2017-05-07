protocol IntObserver {
    func valueChanged(value: Int) -> ()
}

struct ObservableSquare {
    var observers: [IntObserver] = []
    var lengthOfSide: Int {
        willSet {
            for observer in self.observers {
                observer.valueChanged(newValue)
            }
        }
    }

    init(lengthOfSide: Int) {
        self.lengthOfSide = lengthOfSide
    }
}

class ConcreteObserver : IntObserver {
    func valueChanged(value: Int) {
        println("New value: \(value)")
    }
}

var square2 = ObservableSquare(lengthOfSide: 10)
let observer = ConcreteObserver()
square2.observers.append(observer)
square2.lengthOfSide = 50
