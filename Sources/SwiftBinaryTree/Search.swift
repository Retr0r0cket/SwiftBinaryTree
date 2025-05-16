// 
// Search.swift
// SwiftBinaryTree
//
// Created by Rrtr0r0cket on 5/15/25.
// 

/// Uses the traversal methods to search for a node with a specific value
/// - Note: These methods assume that the type of Value conforms to `Equatable`.
public extension BinaryTreeNode where T: Equatable {
    /// Searches for a node with the specified value using pre-order traversal.
    /// - Parameter value: The value to search for.
    /// - Returns: The node with the specified value, or nil if not found.
    func searchPreOrder(value: T) -> BinaryTreeNode? {
        var result: BinaryTreeNode?
        preOrderTraversal { node in
            if node.value == value {
                result = node
            }
        }
        return result
    }

    /// Searches for a node with the specified value using in-order traversal.
    /// - Parameter value: The value to search for.
    /// - Returns: The node with the specified value, or nil if not found.
    func searchInOrder(value: T) -> BinaryTreeNode? {
        var result: BinaryTreeNode?
        inOrderTraversal { node in
            if node.value == value {
                result = node
            }
        }
        return result
    }

    /// Searches for a node with the specified value using post-order traversal.
    /// - Parameter value: The value to search for.
    /// - Returns: The node with the specified value, or nil if not found.
    func searchPostOrder(value: T) -> BinaryTreeNode? {
        var result: BinaryTreeNode?
        postOrderTraversal { node in
            if node.value == value {
                result = node
            }
        }
        return result
    }

    /// Searches for a node with the specified value using level-order traversal.
    /// - Parameter value: The value to search for.
    /// - Returns: The node with the specified value, or nil if not found.
    func searchLevelOrder(value: T) -> BinaryTreeNode? {
        var result: BinaryTreeNode?
        levelOrderTraversal { node in
            if node.value == value {
                result = node
            }
        }
        return result
    }

    /// A wrapper for the pre-order traversal search method.
    /// - Parameter visit: A closure that takes a node and performs an action on it
    /// - Returns: The node with the specified value, or nil if not found.
    func search(visit: (BinaryTreeNode) -> Void) -> BinaryTreeNode? {
        var result: BinaryTreeNode?
        preOrderTraversal { node in
            visit(node)
            if node.value == value {
                result = node
            }
        }
        return result
    }
}
