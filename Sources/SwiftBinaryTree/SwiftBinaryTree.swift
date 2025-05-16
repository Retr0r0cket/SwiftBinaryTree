// 
// SwiftBinaryTree.swift
// SwiftBinaryTree
//
// Created by Retr0r0cket on 5/15/25.
// 

/// Error types for BinaryTreeNode operations.
public enum BinaryTreeError: Error {
    /// Error thrown when a node is not found.
    case noSuchNode
    /// Error thrown when a node is invalid (e.g., not a leaf or root).
    case invalidNode
}

// To make GH Artifacts not want to kill me
@_documentation(visibility: private)
public func != (lhs: BinaryTreeError, rhs: BinaryTreeError) -> Bool {
    return !(lhs == rhs)
}

/** A typealias for BinaryTreeNode that saves 10 chacters per use
    so you feel like you're saving time and the enviorment.
*/
public typealias Node = BinaryTreeNode

/// A node inside a generic binary tree.
public class BinaryTreeNode<T> {
    /// The value of the node.
    public var value: T
    /// The left child of the node.
    public var left: BinaryTreeNode?
    /// The right child of the node.
    public var right: BinaryTreeNode?
    /// The parent of the node.
    public weak var parent: BinaryTreeNode?

    /// Initializes a new node with the given value and optional left and right children.
    /// - Parameters:
    ///  - value: The value of the node.
    ///  - left: The left child of the node (optional).
    ///  - right: The right child of the node (optional).
    public init(value: T, left: BinaryTreeNode? = nil, right: BinaryTreeNode? = nil, parent: BinaryTreeNode? = nil) {
        self.parent = parent
        self.value = value
        self.left = left
        self.right = right
    }

    /// Returns the height of the tree rooted at this node.
    /// - Returns: The height of the tree.
    /// - Note: tree height starts from 0
    public func getHeight() -> Int {
        var rightHeight = 0
        var leftHeight = 0

        if let right = right {
            rightHeight = 1 + right.getHeight()
        }
        if let left = left {
            leftHeight = 1 + left.getHeight()
        }
        return max(leftHeight, rightHeight)
    }

    /// Returns the number of nodes in the tree rooted at this node.
    /// - Returns: The number of nodes in the tree.
    public func getNumNodes() -> Int {
        return 1 + (left?.getNumNodes() ?? 0) + (right?.getNumNodes() ?? 0)
    }

    /// Returns true if the node is a leaf (i.e., has no children).
    /// - Returns: True if the node is a leaf, false otherwise.
    public func isLeaf() -> Bool {
        return left == nil && right == nil
    }

    /// Returns true if the node is a root (i.e., has no parent).
    /// - Returns: True if the node is a root, false otherwise.
    public func isRoot() -> Bool {
        return parent == nil
    }
}
