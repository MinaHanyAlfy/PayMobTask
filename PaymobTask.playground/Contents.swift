import UIKit

var greeting = "Hello, PayMob"
//===============================================/
//MARK: - First -
//var arr = [2,3,1,5]
//[2,3,1,5] == 4 //[1,2,4] == 3 //[2,4,6,1,3,7,9,8,10] == 5 //[] == 1 //Array(1...100000) == 100001 //Array(1...100001) == Fatal //[1,2,4,5,5] == Fatal //[-1,0,2,3] == Fatal
var arr: [Int] = []
print("First Problem")
print(solution(&arr))
/// N For (ArrayCount + 1 for the missing element).
/// TotalArraySum = The sum for all elements with the missing one.
/// Sum = The Sum for array indexies
/// MissingElem = The sub of the totalArraySum and sum to get the missing element.
/// The range between [0,1...100000]
/// Array elements are all distinct;
/// The Elements should be in the range between 1..(N+1).
public func solution(_ A: inout [Int]) -> Int {
    guard A.count >= 0 && A.count <= 100000 else {
        fatalError("Input array size is out of range [0..100000]")
    }
    let set = Set(A)
    guard set.count == A.count else {
        fatalError("Not all elements are distinct")
    }
    guard A.allSatisfy ({ $0 >= 1 && $0 <= N }) else {
        fatalError("Not all elements are within the range [1..\(N)]")
    }
    let n = A.count + 1
    let totalArraySum = ( n * (n+1) ) / 2
    var sum = 0
    for i in A { sum += i }
    let missingElem = totalArraySum - sum
    return missingElem
}
//===============================================/
//MARK: - Second and Third -
//5, [3, 4, 4, 6, 1, 4, 4] == [3, 2, 2, 4, 2] //1, [] == Fatal //5, [6, 6, 6, 6] == [0,0,0,0,0] //5, [1, 2, 3, 3, 4, 4, 5, 5] == [1, 1, 2, 2, 2]//
var arr1: [Int] = [3,4,4,6,1,4,4]
print("Third Problem \nOur Final Array: ",solution1(5, A: &arr1))
/// increase(X) − counter X is increased by 1,
/// max counter − all counters are set to the maximum value of any counter.
/// if A[K] = X, such that 1 ≤ X ≤ N, then operation K is increase(X),
/// if A[K] = N + 1 then operation K is max counter.
/// N and M are integers with in the range [1..100,000]
/// The Elements should be in the range between 1..(N+1).
public func solution1(_ N: Int, A: inout [Int]) -> [Int] {
    guard N >= 1 && N <= 100000 else {
        fatalError("N is out of range [1..100000]")
    }
    
    let M = A.count
    guard M >= 1 && M <= 100000 else {
        fatalError("M is out of range [1..100000]")
    }
    
    guard A.allSatisfy ({ $0 >= 1 && $0 <= N + 1 }) else {
        fatalError("Not all elements are within the range [1..\(N)]")
    }
    
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
        if index == 0 {
            print("Second Problem")
        }
        print(counters)
    }
    return counters
}

//===============================================/
