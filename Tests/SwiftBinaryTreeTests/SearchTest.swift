import Testing
@testable import SwiftBinaryTree

@Test func testSearchPreOrderFound() {
    let n4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let n5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let n2 = BinaryTreeNode(value: 2, left: n4, right: n5) as BinaryTreeNode<Int>
    let n3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: n2, right: n3) as BinaryTreeNode<Int>
    let result = root.searchPreOrder(value: 5)
    assert(result?.value as? Int == 5)
}

@Test func testSearchPreOrderNotFound() {
    let n4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let n5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let n2 = BinaryTreeNode(value: 2, left: n4, right: n5) as BinaryTreeNode<Int>
    let n3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: n2, right: n3) as BinaryTreeNode<Int>
    let result = root.searchPreOrder(value: 99)
    assert(result == nil)
}

@Test func testSearchInOrderFound() {
    let n4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let n5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let n2 = BinaryTreeNode(value: 2, left: n4, right: n5) as BinaryTreeNode<Int>
    let n3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: n2, right: n3) as BinaryTreeNode<Int>
    let result = root.searchInOrder(value: 4)
    assert(result?.value as? Int == 4)
}

@Test func testSearchInOrderNotFound() {
    let n4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let n5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let n2 = BinaryTreeNode(value: 2, left: n4, right: n5) as BinaryTreeNode<Int>
    let n3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: n2, right: n3) as BinaryTreeNode<Int>
    let result = root.searchInOrder(value: 100)
    assert(result == nil)
}

@Test func testSearchPostOrderFound() {
    let n4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let n5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let n2 = BinaryTreeNode(value: 2, left: n4, right: n5) as BinaryTreeNode<Int>
    let n3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: n2, right: n3) as BinaryTreeNode<Int>
    let result = root.searchPostOrder(value: 3)
    assert(result?.value as? Int == 3)
}

@Test func testSearchPostOrderNotFound() {
    let n4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let n5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let n2 = BinaryTreeNode(value: 2, left: n4, right: n5) as BinaryTreeNode<Int>
    let n3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: n2, right: n3) as BinaryTreeNode<Int>
    let result = root.searchPostOrder(value: -1)
    assert(result == nil)
}

@Test func testSearchLevelOrderFound() {
    let n4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let n5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let n2 = BinaryTreeNode(value: 2, left: n4, right: n5) as BinaryTreeNode<Int>
    let n3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: n2, right: n3) as BinaryTreeNode<Int>
    let result = root.searchLevelOrder(value: 2)
    assert(result?.value as? Int == 2)
}

@Test func testSearchLevelOrderNotFound() {
    let n4 = BinaryTreeNode(value: 4) as BinaryTreeNode<Int>
    let n5 = BinaryTreeNode(value: 5) as BinaryTreeNode<Int>
    let n2 = BinaryTreeNode(value: 2, left: n4, right: n5) as BinaryTreeNode<Int>
    let n3 = BinaryTreeNode(value: 3) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 1, left: n2, right: n3) as BinaryTreeNode<Int>
    let result = root.searchLevelOrder(value: 0)
    assert(result == nil)
}
