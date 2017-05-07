class Animal {
    let species: String

    init(species: String) {
        self.species = species
    }
}

class Bird: Animal {
    let wingspan: Int

    init(species: String, wingspan: Int) {
        self.wingspan = wingspan
        super.init(species: species)
    }
}

class Mammal: Animal {
    let numberOfLegs: Int

    init(species: String, numberOfLegs: Int) {
        self.numberOfLegs = numberOfLegs
        super.init(species: species)
    }
}

let zoo: [Animal] = [Mammal(species: "monkey", numberOfLegs: 2),
                     Bird(species: "golden eagle", wingspan: 78),
                     Mammal(species: "polar bear", numberOfLegs: 4)]

for animal in zoo {
    if animal is Bird {
        println("Saw a \(animal.species) flying")
    } else {
        println("Saw a \(animal.species) walking")
    }
}

for zooAnimal in zoo {
    if let animal = zooAnimal as? Bird {
        println("Saw a bird with a \(animal.wingspan)-inch wingspan")
    } else if let animal = zooAnimal as? Mammal {
        println("Saw an mammal walking on \(animal.numberOfLegs) legs")
    }
}

for zooAnimal in zoo {
    let animal = zooAnimal as Bird
    println("Saw a bird with a \(animal.wingspan)-inch wingspan")
}
