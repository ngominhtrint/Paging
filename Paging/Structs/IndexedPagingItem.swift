//
//  IndexedPagingItem.swift
//  Paging
//
//  Created by TriNgo on 1/9/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import UIKit

// An implementation of the `PagingItem` protocol that stores the
// index and title of a given item. The index property is needed to
// make the `PagingItem` comparable. Used by default when using
// `IndexedPagingViewController`
public struct PagingIndexItem: PagingTitleItem, Equatable, Hashable, Comparable {
    
    // The index of the `PagingItem` instance
    public let index: Int
    
    // The title used in the menu cells.
    public let title: String
    
    public var hashValue: Int {
        return index
    }
    
    // Creates an instance of `PagingIndexItem`
    //
    // Parameter index: The index of the `PagingItem`
    // Parameter title: The title used in the menu cells.
    public init(index: Int, title: String) {
        self.index = index
        self.title = title
    }
    
    public static func ==(lhs: PagingIndexItem, rhs: PagingIndexItem) -> Bool {
        return lhs.index == rhs.index && lhs.title == rhs.title
    }
    
    public static func <(lhs: PagingIndexItem, rhs: PagingIndexItem) -> Bool {
        return lhs.index < rhs.index
    }
}
