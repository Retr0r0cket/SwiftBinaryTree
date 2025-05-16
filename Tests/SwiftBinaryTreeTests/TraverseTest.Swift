import Testing
@testable import SwiftBinaryTree

@Test func testPreOrderTraversal() {
    let n4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let n5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let n2 = BinaryTreeNode(value: 2, left: n4, right: n5) as BinaryTreeNode<Int>
    let n3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: n2, right: n3) as BinaryTreeNode<Int>
    var result = [Int]()
    root.preOrderTraversal { node in
        result.append(node.value as! Int)
    }
    assert(result == [1,2,4,5,3])
}

@Test func testInOrderTraversal() {
    let n4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let n5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let n2 = BinaryTreeNode(value: 2, left: n4, right: n5) as BinaryTreeNode<Int>
    let n3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: n2, right: n3) as BinaryTreeNode<Int>
    var result = [Int]()
    root.inOrderTraversal { node in
        result.append(node.value as! Int)
    }
    assert(result == [4,2,5,1,3])
}

@Test func testPostOrderTraversal() {
    let n4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let n5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let n2 = BinaryTreeNode(value: 2, left: n4, right: n5) as BinaryTreeNode<Int>
    let n3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: n2, right: n3) as BinaryTreeNode<Int>
    var result = [Int]()
    root.postOrderTraversal { node in
        result.append(node.value as! Int)
    }
    assert(result == [4,5,2,3,1])
}

@Test func testLevelOrderTraversal() {
    let n4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let n5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let n2 = BinaryTreeNode(value: 2, left: n4, right: n5) as BinaryTreeNode<Int>
    let n3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: n2, right: n3) as BinaryTreeNode<Int>
    var result = [Int]()
    root.levelOrderTraversal { node in
        result.append(node.value as! Int)
    }
    assert(result == [1,2,3,4,5])
}
