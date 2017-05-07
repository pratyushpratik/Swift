func asyncFunction(callback: () -> ()) {
   println("Called asyncFunction()")
   callback()
}

func asyncFunctionWithReturnValue(callback: (Int) -> ()) {
   println("Called asyncFunctionWithReturnValue()")
   callback(100)
}

asyncFunction({
    println("Called asyncFunction's callback")
})

var val = 0
println("Before callback: val is \(val)")
asyncFunctionWithReturnValue({ x in
    val = x
})
println("After callback: val is \(val)")
