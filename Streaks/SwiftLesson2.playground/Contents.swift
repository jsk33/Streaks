import UIKit

var str = "Hello, playground"

// basic function
func sayHello() {
    print("Hello World")
}

sayHello()

// function with paramters
func sayHelloTo(_ name: String, _ age: Int) {
    print("Hello \(name), you're \(age) years old")
}

sayHelloTo("Jason", 24)

// function with return value
func addFourTo(x: Int) -> Int {
    let sum = x + 4
    return sum
}

print(addFourTo(x: 15))
