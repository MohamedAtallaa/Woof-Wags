//
//  Cell.swift
//  Woof&Wags
//
//  Created by Mohamed Atallah on 25/03/2023.
//

import Foundation

protocol Cell: AnyObject {
    static var defaultReuseIdentifier: String { get }
}

extension Cell {
    static var defaultReuseIdentifier: String { return "\(self)" }
}
