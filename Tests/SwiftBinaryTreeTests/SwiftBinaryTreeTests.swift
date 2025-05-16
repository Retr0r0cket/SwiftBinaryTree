import Testing
@testable import SwiftBinaryTree

/// Test the creation of a binary tree node and children using the "zero, one, and many" rule.
@Test func testNodeCreation() async throws {
    // Create a single node.
    let rootNode = BinaryTreeNode(value: 10)
    assert(rootNode.value == 10, "Expected value 10 for single node")
    assert(rootNode.left == nil, "Expected no left child for single node")
    assert(rootNode.right == nil, "Expected no right child for single node")

    // Add a left child
    let leftChild = BinaryTreeNode(value: 5)
    rootNode.left = leftChild
    leftChild.parent = rootNode
    assert(rootNode.left?.value == 5, "Expected left child value 5")
    assert(leftChild.parent?.value == 10, "Expected parent value 10 for left child")
    assert(leftChild.left == nil, "Expected no left child for left child")
    assert(leftChild.right == nil, "Expected no right child for left child")

    // Add a right child
    let rightChild = BinaryTreeNode(value: 15)
    rootNode.right = rightChild
    rightChild.parent = rootNode
    assert(rootNode.right?.value == 15, "Expected right child value 15")
    assert(rightChild.parent?.value == 10, "Expected parent value 10 for right child")
    assert(rightChild.left == nil, "Expected no left child for right child")
    assert(rightChild.right == nil, "Expected no right child for right child")

    // Add a left grandchild
    let leftGrandchild = BinaryTreeNode(value: 3)
    leftChild.left = leftGrandchild
    leftGrandchild.parent = leftChild
    assert(leftChild.left?.value == 3, "Expected left grandchild value 3")
    assert(leftGrandchild.parent?.value == 5, "Expected parent value 5 for left grandchild")
    assert(leftGrandchild.left == nil, "Expected no left child for left grandchild")
    assert(leftGrandchild.right == nil, "Expected no right child for left grandchild")
}

@Test func testGetHeight() {
    let root = BinaryTreeNode(value: 10)
    // Height should be 0 for just the root.
    assert(root.getHeight() == 0, "Expected height 0 for the root")

    // Add left child.
    let leftChild = BinaryTreeNode(value: 5)
    root.left = leftChild
    leftChild.parent = root
    assert(root.getHeight() == 1, "Expected height 1 after adding left child")

    // Add right child.
    let rightChild = BinaryTreeNode(value: 15)
    root.right = rightChild
    rightChild.parent = root
    assert(root.getHeight() == 1, "Expected height 1 after adding right child")

    // Add a child to left child.
    let leftRightChild = BinaryTreeNode(value: 3)
    leftChild.left = leftRightChild
    leftRightChild.parent = leftChild
    assert(root.getHeight() == 2, "Expected height 2 after adding left child's child")

    // Add a child to right child.
    let rightLeftChild = BinaryTreeNode(value: 12)
    rightChild.left = rightLeftChild
    rightLeftChild.parent = rightChild
    assert(root.getHeight() == 2, "Expected height 2 after adding right child's child")

    // Add a left great grandchild.
    let leftLeftChild = BinaryTreeNode(value: 1)
    leftRightChild.left = leftLeftChild
    leftLeftChild.parent = leftRightChild
    assert(root.getHeight() == 3, "Expected height 3 after adding left child's left child")
}

@Test func testGetNumNodes() {
    let root = BinaryTreeNode(value: 20)
    // Count should be 1 for just the root.
    assert(root.getNumNodes() == 1, "Expected 1 node for the root")

    // Add left child.
    let leftChild = BinaryTreeNode(value: 15)
    root.left = leftChild
    leftChild.parent = root
    assert(root.getNumNodes() == 2, "Expected 2 nodes after adding left child")

    // Add right child.
    let rightChild = BinaryTreeNode(value: 25)
    root.right = rightChild
    rightChild.parent = root
    assert(root.getNumNodes() == 3, "Expected 3 nodes after adding right child")

    // Add a child to left child.
    let leftRightChild = BinaryTreeNode(value: 18)
    leftChild.right = leftRightChild
    leftRightChild.parent = leftChild
    assert(root.getNumNodes() == 4, "Expected 4 nodes after adding left child's child")
}

@Test func testIsLeaf() {
    let node = BinaryTreeNode(value: 50)
    // Initially, a node with no children is a leaf.
    assert(node.isLeaf(), "Node with no children should be a leaf")

    // Adding a child makes it no longer a leaf.
    let child = BinaryTreeNode(value: 30)
    node.left = child
    child.parent = node
    assert(!node.isLeaf(), "Node with a child should not be a leaf")
    // The new child is a leaf.
    assert(child.isLeaf(), "Child with no children should be a leaf")
}

@Test func testIsRoot() {
    let root = BinaryTreeNode(value: 100)
    // Node with no parent is root.
    assert(root.isRoot(), "Node with no parent should be root")

    // Child node should not be a root.
    let child = BinaryTreeNode(value: 90)
    root.left = child
    child.parent = root
    assert(!child.isRoot(), "Child node should not be root")
}
