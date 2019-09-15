import Foundation

/*
 선형 자료구조의 일종으로 Last In First Out (LIFO).
 즉, 나중에 들어간 원소가 먼저 나온다.
 차곡차곡 쌓이는 구조로 먼저 Stack 에 들어가게 된 원소는 맨 바닥에 깔리게 된다.
 그렇기 때문에 늦게 들어간 녀석들은 그 위에 쌓이게 되고 호출 시 가장 위에 있는 녀석이 호출되는 구조이다.
 */

struct Stack<E> {
    private var elements: [E] = []
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    mutating func peek() -> E? {
        return elements.last
    }
    
    mutating func push(_ element: E) {
        elements.append(element)
    }
    
    mutating func pop() -> E? {
        return elements.popLast()
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: E...) {
        self.elements = elements
    }
}

var stack: Stack<Int> = [1, 2]
print(stack.pop())
