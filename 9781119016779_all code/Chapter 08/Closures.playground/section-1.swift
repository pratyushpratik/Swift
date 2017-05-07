var x = 10

let doubleX = { x * 2 }

doubleX()
x = 50
doubleX()

let adder = { y in x + y }

adder(10)
x = 100
adder(25)

func printComputedValue(fn: (Int -> Int)) {
    println(fn(10))
}

printComputedValue(adder)
x = 1000
printComputedValue(adder)
