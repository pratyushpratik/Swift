class Cat {
    func eat() {
        println("The cat eats some food")
    }

    func speak() {
        println("The cat purrs.")
    }
}

class Housecat: Cat {
    override func speak() {
        println("Meow!")
    }
}

class Cougar: Cat {
    override func speak() {
        println("Roar!")
    }
}

let cat1: Cat = Cat()
let cat2: Cat = Housecat()
let cat3: Cat = Cougar()

cat1.speak()
cat1.eat()
cat2.speak()
cat2.eat()
cat3.speak()
cat3.eat()
