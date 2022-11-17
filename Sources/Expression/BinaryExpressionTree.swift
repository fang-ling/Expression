//
//  BinaryExpressionTree.swift
//  
//
//  Created by Fang Ling on 2022/11/17.
//

import Foundation

typealias Stack = Array

struct BinaryExpressionTree {
    var root : BinaryExpressionTreeNode
    
    /* Create a BET on top of a white spaces separated postfix expression. */
    init(postfix expr : String) {
        var stack = Stack<BinaryExpressionTreeNode>()
        let exprs = expr.components(separatedBy: .whitespaces)
        for i in exprs {
            if (!BinaryExpressionTree.isOperator(i)) {
                stack.append(BinaryExpressionTreeNode(op: i))
            } else {
                if (i == Operators.not.rawValue) { /* Special unary operator */
                    let delta = BinaryExpressionTreeNode(op: Operators.not)
                    let child = stack.removeLast()
                    delta.children[1] = child
                    stack.append(delta)
                } else {
                    /* Be careful about the order */
                    let b = stack.removeLast()
                    let a = stack.removeLast()
                    let delta = BinaryExpressionTreeNode(op: i,
                                                         children: [a, b])
                    stack.append(delta)
                }
            }
        }
        root = stack.removeLast()
    }
}
