// 
// SwapNodes.swift
// SwiftBinaryTree
//
// Created by Retr0r0cket on 5/15/25.
// 

/// Extensions for node swapping.
/// - Note: these methods do not modify the original node.
public extension BinaryTreeNode {
    /// Returns a copy of the node but with the left and right children swapped.
    /// - Returns: The node with swapped children.
    func swapChildren() -> BinaryTreeNode {
        let newLeft = right
        let newRight = left
        return BinaryTreeNode(value: value, left: newLeft, right: newRight)
    }

    /// Swaps the root and left child of the node provided the left node has no children.
    /// - Throws: 
    ///     - `BinaryTreeError.noSuchNode` if there is no left child.
    ///     - `BinaryTreeError.invalidNode` if the left child has children.
    /// - Returns: The node with swapped children.
    func swapRootAndLeft() throws -> BinaryTreeNode {
        guard let left = left else {
            throw BinaryTreeError.noSuchNode
        }
        guard left.left == nil && left.right == nil else {
            throw BinaryTreeError.invalidNode
        }
        let newLeft = right
        let newRight = left
        return BinaryTreeNode(value: value, left: newLeft, right: newRight)
    }

    /// Swaps the root and right child of the node provided the right node has no children.
    /// - Throws:
    ///     - `BinaryTreeError.noSuchNode` if there is no right child.
    ///     - `BinaryTreeError.invalidNode` if the right child has children.
    /// - Returns: The node with swapped children.
    func swapRootAndRight() throws -> BinaryTreeNode {
        guard let right = right else {
            throw BinaryTreeError.noSuchNode
        }
        guard right.left == nil && right.right == nil else {
            throw BinaryTreeError.invalidNode
        }
        let newLeft = right
        let newRight = left
        return BinaryTreeNode(value: value, left: newLeft, right: newRight)
    }
}
