//: Playground - noun: a place where people can play

import UIKit

// Stack

public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
}

// Create a stuck and put elements 

var testStack = Stack(array: ["Vlad", "Maks", "Misha", "Lena"])

// Look at the first element
testStack.pop()

testStack.isEmpty

testStack.count

testStack.push("Dima")

testStack.count

testStack.pop()

testStack.top

testStack.count

