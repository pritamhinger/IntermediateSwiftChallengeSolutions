// Copyright (c) 2017 Razeware LLC
// See Copyright Notice page for details about the license.


// Create an operator +/- that enables the following test case.

infix operator +/- : RangeFormationPrecedence

func +/- <T: FloatingPoint>(lhs: T, rhs: T) -> Range<T>{
    let positiveRHS = abs(rhs)
    return Range(uncheckedBounds: (lower: lhs - positiveRHS, upper: lhs + positiveRHS))
}


let aboutThree = 3 +/- 3   // Create a Range(2.5..<3.5)
aboutThree.contains(2.7)

