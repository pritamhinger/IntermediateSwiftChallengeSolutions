import UIKit

/*:
 #### Intermediate Swift Video Tutorial Series - raywenderlich.com
 #### Video 2: Closures
 
 **Note:** If you're seeing this text as comments rather than nicely-rendered text, select Editor\Show Rendered Markup in the Xcode menu.
 */

//: Write a simple closure in a vriable called myClosure that will print out a message that reads "I love Swift"
var myClosure : () -> Void = { () -> Void in
    print("I love Swift")
}

//: Call this closure
myClosure()
//: Write a function that will run a given closure a given number of times. Declare the function like so: func repeatTask(times: Int, task: () -> Void)
func repeatTask(times: Int, task: () -> Void){
    for _ in 0 ..< times{
        task()
    }
}
//: The function should run the task closure, times number of times. Use this function to print "I love Swift" 10 times.
repeatTask(times: 2, task: myClosure)
//: **Ub3r H4ck3r Challenge** Create a new array called myArray and add the following integers: 40, 534, 10, 54, 42. Create two closures. One is called printNumbers and the other is printNumbersInReverse. Call both closures pasisng in the array.
var myArray = [40,534,54,42]
var printNumbers: ([Int]) -> Void = { (numbers: [Int]) -> Void in
    for num in numbers {
        print(num)
    }
}

var printNumbersInReverse: ([Int]) -> Void = { (numbers: [Int]) -> Void in
    let size = numbers.count
    for index in 0 ..< size{
        print(numbers[size - index - 1])
    }
}

printNumbers(myArray)
printNumbersInReverse(myArray)

