import Testing
@testable import SwiftBinaryTree

@Test func testSwapChildren() {
    // Create a node with left and right children.
    let leftChild = BinaryTreeNode(value: 1) as BinaryTreeNode<Int>
    let rightChild = BinaryTreeNode(value: 2) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 0, left: leftChild, right: rightChild) as BinaryTreeNode<Int>

    let swapped = root.swapChildren()

    // After swap, left should be what originally was right, and right should be what originally was left.
    assert(swapped.left?.value as? Int == rightChild.value, "swapChildren: Left child should match original right child's value")
    assert(swapped.right?.value as? Int == leftChild.value, "swapChildren: Right child should match original left child's value")
}

@Test func testSwapRootAndLeftSuccess() {
    let leftChild = BinaryTreeNode(value: 1) as BinaryTreeNode<Int>
    let rightChild = BinaryTreeNode(value: 2) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 0, left: leftChild, right: rightChild) as BinaryTreeNode<Int>

    // Perform the swap.
    var swapped: BinaryTreeNode<Int>?
    do {
        swapped = try root.swapRootAndLeft()
    } catch {
        assertionFailure("swapRootAndLeft threw an unexpected error: \(error)")
    }

    // After swap, new left = original right, new right = original left.
    assert(swapped?.left?.value as? Int == rightChild.value, "swapRootAndLeft: left child should be the original right child")
    assert(swapped?.right?.value as? Int == leftChild.value, "swapRootAndLeft: right child should be the original left child")
}

@Test func testSwapRootAndLeftNoLeft() {
    let root = BinaryTreeNode(value: 0) as BinaryTreeNode<Int>

    var thrownError: BinaryTreeError?
    do {
        _ = try root.swapRootAndLeft()
    } catch let error as BinaryTreeError {
        thrownError = error
    } catch {
        assertionFailure("Unexpected error type")
    }
    assert(thrownError == .noSuchNode, "Expected BinaryTreeError.noSuchNode when left child does not exist")
}

@Test func testSwapRootAndLeftInvalid() {
    let leftChildChild = BinaryTreeNode(value: 10) as BinaryTreeNode<Int>
    let leftChild = BinaryTreeNode(value: 1, left: leftChildChild) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 0, left: leftChild) as BinaryTreeNode<Int>

    var thrownError: BinaryTreeError?
    do {
        _ = try root.swapRootAndLeft()
    } catch let error as BinaryTreeError {
        thrownError = error
    } catch {
        assertionFailure("Unexpected error type")
    }
    assert(thrownError == .invalidNode, "Expected BinaryTreeError.invalidNode when left child is not a leaf")
}

@Test func testSwapRootAndRightSuccess() {
    let leftChild = BinaryTreeNode(value: 1) as BinaryTreeNode<Int>
    let rightChild = BinaryTreeNode(value: 2) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 0, left: leftChild, right: rightChild) as BinaryTreeNode<Int>

    var swapped: BinaryTreeNode<Int>?
    do {
        swapped = try root.swapRootAndRight()
    } catch {
        assertionFailure("swapRootAndRight threw an unexpected error: \(error)")
    }

    assert(swapped?.left?.value as? Int == rightChild.value, "swapRootAndRight: left child should be the original right child")
    assert(swapped?.right?.value as? Int == leftChild.value, "swapRootAndRight: right child should be the original left child")
}

@Test func testSwapRootAndRightNoRight() {
    let root = BinaryTreeNode(value: 0) as BinaryTreeNode<Int>

    var thrownError: BinaryTreeError?
    do {
        _ = try root.swapRootAndRight()
    } catch let error as BinaryTreeError {
        thrownError = error
    } catch {
        assertionFailure("Unexpected error type")
    }
    assert(thrownError == .noSuchNode, "Expected BinaryTreeError.noSuchNode when right child does not exist")
}

@Test func testSwapRootAndRightInvalid() {
    let rightChildChild = BinaryTreeNode(value: 10) as BinaryTreeNode<Int>
    let rightChild = BinaryTreeNode(value: 2, right: rightChildChild) as BinaryTreeNode<Int>
    let root = BinaryTreeNode(value: 0, right: rightChild) as BinaryTreeNode<Int>

    var thrownError: BinaryTreeError?
    do {
        _ = try root.swapRootAndRight()
    } catch let error as BinaryTreeError {
        thrownError = error
    } catch {
        assertionFailure("Unexpected error type")
    }
    assert(thrownError == .invalidNode, "Expected BinaryTreeError.invalidNode when right child is not a leaf")
}
