import UIKit

var greeting = "Hello, PayMob"
//===============================================/
//MARK: - First -
var arr = [1,2,4]
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
//===============================================/
//MARK: - Second -

var arr1 = [3,4,4,6,1,4,4]
solution1(5, A: &arr1)
/// increase(X) − counter X is increased by 1,
/// max counter − all counters are set to the maximum value of any counter.
/// if A[K] = X, such that 1 ≤ X ≤ N, then operation K is increase(X),
/// if A[K] = N + 1 then operation K is max counter.
///
public func solution1(_ N: Int, A: inout [Int]) {
    var counters = Array(repeating: 0, count: N)
    var max = 0
    let cond = N + 1
    var position = 0
    for index in 0..<A.count {
        if A[index] == cond {
            counters = Array(repeating: max, count: N)
        } else {
            position = A[index] - 1
            counters[position] = counters[position] + 1
            if counters[position] > max {
                max = counters[position]
            }
        }
       print(counters)
    }
    
}

//===============================================/
//MARK: - Third -
var arr2 = [3,4,4,6,1,4,4]
print("Our Array",solution2(5, A: &arr1))
/// increase(X) − counter X is increased by 1,
/// max counter − all counters are set to the maximum value of any counter.
/// if A[K] = X, such that 1 ≤ X ≤ N, then operation K is increase(X),
/// if A[K] = N + 1 then operation K is max counter.
public func solution2(_ N: Int, A: inout [Int]) -> [Int] {
    var counters = Array(repeating: 0, count: N)
    var max = 0
    let cond = N + 1
    var position = 0
    for index in 0..<A.count {
        if A[index] == cond {
            counters = Array(repeating: max, count: N)
        } else {
            position = A[index] - 1
            counters[position] = counters[position] + 1
            if counters[position] > max {
                max = counters[position]
            }
        }
       print(counters)
    }
    return counters
}
