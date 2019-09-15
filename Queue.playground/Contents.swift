import Foundation

/*
 선형 자료구조의 일종으로 First In First Out (FIFO).
 즉, 먼저 들어간 놈이 먼저 나온다.
 Stack 과는 반대로 먼저 들어간 놈이 맨 앞에서 대기하고 있다가 먼저 나오게 되는 구조이다.
 Enqueue: O(1) Dequeue: O(n)
 */

struct Queue<E> {
    private var elements: [E] = []
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    mutating func enqueue(_ element: E) {
        elements.append(element)
    }
    
    mutating func dequeue() -> E? {
        guard !elements.isEmpty else {
            return nil
        }
        
        return elements.removeFirst()
    }
}

extension Queue: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: E...) {
        self.elements = elements
    }
}

var queue: Queue<Int> = [1, 2, 3]
print(queue.dequeue())
