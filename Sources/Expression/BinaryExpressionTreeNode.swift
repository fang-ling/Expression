//
//  BinaryExpressionTreeNode.swift
//  
//
//  Created by Fang Ling on 2022/11/16.
//

import Foundation

class BinaryExpressionTreeNode {
    var op : String
    var children : [BinaryExpressionTreeNode?]
    
    init(op: String, children: [BinaryExpressionTreeNode?]) {
        self.op = op
        self.children = children
    }
    
    init(op: String) {
        self.op = op
        self.children = [BinaryExpressionTreeNode?](repeating: nil, count: 2)
    }
    
    init(op : Operators) {
        self.op = op.rawValue
        self.children = [BinaryExpressionTreeNode?](repeating: nil, count: 2)
    }
}
