// Copyright (c) 2017 Razeware LLC
// See Copyright Notice page for details about the license.

// Challenge
// You may already know that enums are value types in Swift.  What about indirect enums?
// Create an indirect enum and show that it exhibits value semantics and not reference 
// semantics.

indirect enum Expression{
    case number(Int)
    case add(Expression, Expression)
    
    func evaluate() -> Int {
        switch self {
        case let .number(value):
            return value
        case let .add(left, right):
            return left.evaluate() + right.evaluate()
        }
    }
}

var num1 = Expression.number(10)
var num1Copy = num1
num1Copy = .number(20)
num1
var num2 = Expression.number(7)
var num1PlusNum2 = Expression.add(num1, num2)
num1PlusNum2.evaluate()
num1Copy = .number(25)
num1PlusNum2.evaluate()
