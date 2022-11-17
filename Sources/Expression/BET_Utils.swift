//
//  BET_Utils.swift
//  
//
//  Created by Fang Ling on 2022/11/17.
//

import Foundation

extension BinaryExpressionTreeNode {
    func isOperator() -> Bool {
        for i in Operators.allCases {
            if i.rawValue == op {
                return true
            }
        }
        return false
    }
}

extension BinaryExpressionTree {
    static func isOperator(_ op : String) -> Bool {
        for i in Operators.allCases {
            if i.rawValue == op {
                return true
            }
        }
        return false
    }
}
