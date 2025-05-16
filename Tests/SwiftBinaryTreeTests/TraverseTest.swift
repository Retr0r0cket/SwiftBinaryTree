import Testing
@testable import SwiftBinaryTree

@Test func testPreOrderTraversal() {
    let node4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let node5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let node2 = BinaryTreeNode(value: 2, left: node4, right: node5) as BinaryTreeNode<Int>
    let node3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: node2, right: node3) as BinaryTreeNode<Int>
    var result = [Int]()
    root.preOrderTraversal { node in
        result.append(node.value)
    }
    assert(result == [1, 2, 4, 5, 3])
}

@Test func testInOrderTraversal() {
    let node4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let node5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let node2 = BinaryTreeNode(value: 2, left: node4, right: node5) as BinaryTreeNode<Int>
    let node3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: node2, right: node3) as BinaryTreeNode<Int>
    var result = [Int]()
    root.inOrderTraversal { node in
        result.append(node.value)
    }
    assert(result == [4, 2, 5, 1, 3])
}

@Test func testPostOrderTraversal() {
    let node4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let node5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let node2 = BinaryTreeNode(value: 2, left: node4, right: node5) as BinaryTreeNode<Int>
    let node3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: node2, right: node3) as BinaryTreeNode<Int>
    var result = [Int]()
    root.postOrderTraversal { node in
        result.append(node.value)
    }
    assert(result == [4, 5, 2, 3, 1])
}

@Test func testLevelOrderTraversal() {
    let node4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let node5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let node2 = BinaryTreeNode(value: 2, left: node4, right: node5) as BinaryTreeNode<Int>
    let node3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: node2, right: node3) as BinaryTreeNode<Int>
    var result = [Int]()
    root.levelOrderTraversal { node in
        result.append(node.value)
    }
    assert(result == [1, 2, 3, 4, 5])
}
