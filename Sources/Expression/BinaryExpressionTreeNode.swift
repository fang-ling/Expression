//
//  BinaryExpressionTreeNode.swift
//  
//
//  Created by Fang Ling on 2022/11/16.
//

import Foundation

internal class BinaryExpressionTreeNode {
    internal var op : String
    internal var children : [BinaryExpressionTreeNode?]
    
    internal init(op: String, children: [BinaryExpressionTreeNode?]) {
        self.op = op
        self.children = children
    }
    
    internal init(op: String) {
        self.op = op
        self.children = [BinaryExpressionTreeNode?](repeating: nil, count: 2)
    }
}
