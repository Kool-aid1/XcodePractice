//
//  Item.swift
//  XcodeDemo
//
//  Created by Kenny Ly on 6/18/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
