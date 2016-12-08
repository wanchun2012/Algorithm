struct Stack<AnyObject> {
    var items = [AnyObject]()
    
    mutating func push(_ item: AnyObject) {
        items.append(item)
    }
    
    mutating func pop() -> AnyObject? {
        if (self.count() > 0) {
            return items.removeLast()
        }
        return nil
    }
    
    func top() -> AnyObject? {
        return items.last
    }
    
    func count() -> Int {
        return items.count
    }
    
    func show() {
        print(items)
    }
}

var lines = Stack<Int>()

print(lines.count())
