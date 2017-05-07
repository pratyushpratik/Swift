class Queue<T: Equatable> {
    var items = [T]()

    func insert(item: T) {
        items.append(item)
    }

    func remove() -> T? {
        if items.isEmpty {
            return nil
        } else {
            return items.removeAtIndex(0)
        }
    }
}

extension Queue {
    func peek() -> T? {
        if items.isEmpty {
            return nil
        } else {
            return items[0]
        }
    }
}

extension Queue {
    func hasItem(obj: T) -> Bool {
        for item in items {
            if item == obj {
                return true
            }
        }
        return false
    }
}

var queue = Queue<Int>()
queue.insert(10)
queue.insert(20)
queue.peek()
queue.remove()
queue.hasItem(20)
queue.hasItem(10)
