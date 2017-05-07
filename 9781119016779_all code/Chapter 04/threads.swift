import Foundation


@objc class SayFunction {
    func sayOne() {
        NSLog("First method invoked after 0 seconds")
    }

    func sayTwo() {
        NSThread.sleepForTimeInterval(10.0)
        NSLog("Second method invoked after 10 seconds")
    }

    func sayThree() {
        NSThread.sleepForTimeInterval(5.0)
        NSLog("Third method invoked after 5 seconds")
    }
}

let hello = SayFunction()
let thread1 = NSThread(target: hello, selector: "sayOne", object: nil)
let thread2 = NSThread(target: hello, selector: "sayTwo", object: nil)
let thread3 = NSThread(target: hello, selector: "sayThree", object: nil)
thread1.start()
thread2.start()
thread3.start()
while (true) {}
