import Foundation

var s: String? = nil
s = "string"
s?.uppercaseString

var t: String? = nil
t?.uppercaseString

if let val = t {
    println("t is not nil")
} else {
    println("t is nil")
}
