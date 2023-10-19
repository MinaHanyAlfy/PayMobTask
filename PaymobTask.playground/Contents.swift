import UIKit

var greeting = "Hello, PayMob"
//===============================================/
//MARK: - First -
var arr = [2,4,6,1,3,7,9,8,10]
//[2,3,1,5] //[1,2,4] //[2,4,6,1,3,7,9,8,10]
print(solution(&arr))

/// N For (ArrayCount + 1 for the missing element).
/// TotalArraySum = The sum for all elements with the missing one.
/// Sum = The Sum for array indexies
/// MissingElem = The sub of the totalArraySum and sum to get the missing element.
public func solution(_ A: inout [Int]) -> Int {
    let n = A.count + 1
    let totalArraySum = ( n * (n+1) ) / 2
    var sum = 0
    print(totalArraySum)
    for i in A { sum += i }
    print(sum)
    let missingElem = totalArraySum - sum
    return missingElem
}
