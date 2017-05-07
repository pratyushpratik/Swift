// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let num = 20

for i in 1...100 {
    let j = i * 10
}


let label = UILabel(frame: CGRectMake(0, 0, 200, 80))
label.text = "Playgrounds are fun!"
label.backgroundColor = UIColor(red: 0.0, green: 0.75, blue: 0.95, alpha: 1.0)
label.layer.cornerRadius = 10
label.textAlignment = NSTextAlignment.Center

var mutableStr = NSMutableString(string: "This is swift")
mutableStr.replaceCharactersInRange(NSMakeRange(8, 1), withString: "S")
mutableStr.appendString("!")
