import Cocoa

let colorString = "#ff0000"
let color1 = NSColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)

var colorCodeString = colorString
if colorString.hasPrefix("#") {
    colorCodeString = colorString.substringFromIndex(advance(colorString.startIndex, 1))
}

let scanner = NSScanner(string: colorCodeString)
var colorCode: CUnsignedLongLong = 0
scanner.scanHexLongLong(&colorCode)
colorCode
let red = CGFloat((colorCode & 0xff0000) >> 16)
let blue = CGFloat((colorCode & 0x00ff00) >> 8)
let green = CGFloat(colorCode & 0x0000ff)

extension NSColor {
    convenience init(fromCSSString css: String) {
        var cssCode = css
        if css.hasPrefix("#") {
            cssCode = css.substringFromIndex(advance(css.startIndex, 1))
        }
        let scanner = NSScanner(string: cssCode)
        var colorCode: CUnsignedLongLong = 0
        if scanner.scanHexLongLong(&colorCode) {
            let red = CGFloat((colorCode & 0xff0000) >> 16) / 255.0
            let blue = CGFloat((colorCode & 0x00ff00) >> 8) / 255.0
            let green = CGFloat(colorCode & 0x0000ff) / 255.0
            self.init(red: red, green: green, blue: blue, alpha: 1.0)
        } else {
            NSLog("Could not scan CSS string: \(css)")
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        }
    }
}

let color2 = NSColor(fromCSSString: colorString)
color2.redComponent == color1.redComponent
color2.greenComponent == color1.greenComponent
color2.blueComponent == color1.blueComponent

extension NSColor {
    var CSSString: String {
        let red = Int(redComponent * 255.0)
        let green = Int(greenComponent * 255.0)
        let blue = Int(blueComponent * 255.0)
        return NSString(format: "#%02x%02x%02x", red, green, blue)
    }
}

color2.CSSString
color2.CSSString == colorString
