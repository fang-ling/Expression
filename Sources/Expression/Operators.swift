//
//  Operators.swift
//  
//
//  Created by Fang Ling on 2022/11/16.
//

enum Operators : String, CaseIterable {
    typealias RawValue = String
    
    case and   = "&"
    case or    = "|"
    case not   = "~"
    case imply = "->"
    case iff   = "<=>"
}
