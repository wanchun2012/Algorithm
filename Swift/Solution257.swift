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



class Solution257 {
    
    init() {
        
    }
    
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var result: Array<String> = []
        if (root != nil) {
            self.path(root!, "", &result)
        }
        return result
    }
    
    func path(_ node: TreeNode, _ path: String, _ result: inout Array<String>) {
        if (node.left == nil && node.right == nil) {
            let newPath = path + String(node.val)
            result.append(newPath)
            
        }
        
        let newPath = path + String(node.val) + "->"
        
        if (node.left != nil) {
            self.path(node.left!, newPath, &result)
        }
        
        if (node.right != nil) {
            self.path(node.right!, newPath, &result)
        }
    }
    
}



var rl1: TreeNode = TreeNode(9, nil, nil)
var rr1l2: TreeNode = TreeNode(15, nil, nil)
var rr1r2: TreeNode = TreeNode(7, nil, nil)
var rr1: TreeNode = TreeNode(20, rr1l2, rr1r2)
var root: TreeNode = TreeNode(3, rl1, rr1)

var s = Solution257()
print("binaryTreePaths \(s.binaryTreePaths(root))")
