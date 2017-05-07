struct Fraction {
    let numerator: Int
    let denominator: Int
}

prefix func ~ (fraction: Fraction) -> Fraction {
    return Fraction(numerator: fraction.denominator,
                    denominator: fraction.numerator)
}

func * (left: Fraction, right: Fraction) -> Fraction {
    return Fraction(numerator: left.numerator * right.numerator,
                    denominator: left.denominator * right.denominator)
}

func * (left: Fraction, right: Int) -> Fraction {
    return Fraction(numerator: left.numerator * right,
                    denominator: left.denominator)
}

func * (left: Int, right: Fraction) -> Fraction {
    return right * left
}

func / (left: Fraction, right: Fraction) -> Fraction {
    return left * ~right
}

func *= (inout left: Fraction, right: Fraction) {
    left = left * right
}

func /= (inout left: Fraction, right: Fraction) {
    left = left / right
}

func == (left: Fraction, right: Fraction) -> Bool {
    return left.numerator == right.numerator &&
           left.denominator == right.denominator
}

func != (left: Fraction, right: Fraction) -> Bool {
    return !(left == right)
}

let f1 = Fraction(numerator: 3, denominator: 4)
let f2 = Fraction(numerator: 1, denominator: 2)
let f3 = f1 * f2
let f4 = f1 * 10
let f5 = 10 * f1
let f6 = ~f1
let f7 = f1 / f2
var f8 = Fraction(numerator: 3, denominator: 4)
f8 *= f2
f8 /= f2
f4 == f5
f4 == f8
