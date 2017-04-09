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



// Queue
// enqueue O(1) dequeue O(n)

public struct Queue<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public var front: T? {
        return array.first
    }
}


var queue = Queue<String>()

queue.enqueue("Vlad")
queue.enqueue("Lena")
queue.enqueue("Misha")

queue.front

queue.dequeue()

queue.front

// Queue every operation O(1)

public struct BeterQueue<T> {
    fileprivate var array = [T?]()
    fileprivate var head = 0
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    public var count: Int {
        return array.count - head
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else { return nil }
        
        array[head] = nil
        head += 1
        
        let percentage = Double(head) / Double(array.count)
        if array.count > 50 && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        
        return element
    }
    
    public var front: T? {
        if isEmpty{
            return nil
        } else {
            return array[head]
        }
    }
}


var q = BeterQueue<String>()
q.array
q.enqueue("Ada")
q.enqueue("Steve")
q.enqueue("Tim")
q.array
q.count

q.dequeue()
q.array
q.count

q.dequeue()
q.array
q.count

q.enqueue("Grace")
q.array
q.count