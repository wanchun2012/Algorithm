import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    init(_ val: Int, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}



class Solution404 {
    
    init() {
        
    }
    
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        return self.sum(root, false)
    }
    
    func sum(_ node: TreeNode?, _ isLeft: Bool) -> Int {
        if (node == nil) {
            return 0
        }
        
        if (node!.left == nil && node!.right == nil && isLeft) {
            return node!.val
        }
        
        return self.sum(node!.left, true) + self.sum(node!.right, false)
    }
}



var rl1: TreeNode = TreeNode(9, nil, nil)
var rr1l2: TreeNode = TreeNode(15, nil, nil)
var rr1r2: TreeNode = TreeNode(7, nil, nil)
var rr1: TreeNode = TreeNode(20, rr1l2, rr1r2)
var root: TreeNode = TreeNode(3, rl1, rr1)

var s = Solution404()
print("sumOfLeftLeaves \(s.sumOfLeftLeaves(root))")