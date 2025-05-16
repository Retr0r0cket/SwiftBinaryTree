// 
// Traverse.swift
// SwiftBinaryTree
//
// Created by Retr0r0cket on 5/15/25.
// 

/// Methods for traversing the tree. Can be used to search for a node
public extension BinaryTreeNode {
    /// Performs a pre-order traversal of the tree rooted at this node.
    /// - Parameter visit: A closure that takes a node and performs an action on it.
    func preOrderTraversal(visit: (BinaryTreeNode) -> Void) {
        visit(self)
        left?.preOrderTraversal(visit: visit)
        right?.preOrderTraversal(visit: visit)
    }

    /// Performs an in-order traversal of the tree rooted at this node.
    /// - Parameter visit: A closure that takes a node and performs an action on it.
    func inOrderTraversal(visit: (BinaryTreeNode) -> Void) {
        left?.inOrderTraversal(visit: visit)
        visit(self)
        right?.inOrderTraversal(visit: visit)
    }

    /// Performs a post-order traversal of the tree rooted at this node.
    /// - Parameter visit: A closure that takes a node and performs an action on it.
    func postOrderTraversal(visit: (BinaryTreeNode) -> Void) {
        left?.postOrderTraversal(visit: visit)
        right?.postOrderTraversal(visit: visit)
        visit(self)
    }

    /// Performs a level-order traversal of the tree rooted at this node.
    /// - Parameter visit: A closure that takes a node and performs an action on it.
    func levelOrderTraversal(visit: (BinaryTreeNode) -> Void) {
        // Using a queue to perform level-order traversal
        // Initially just has the root node
        var queue: [BinaryTreeNode] = [self]
        // For each iteration, add children to the queue after visiting the node
        while !queue.isEmpty {
            let node = queue.removeFirst()
            visit(node)
            if let left = node.left {
                queue.append(left)
            }
            if let right = node.right {
                queue.append(right)
            }
        }
    }
}
