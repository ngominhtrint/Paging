//
//  PagingMenuItemSize.swift
//  Paging
//
//  Created by TriNgo on 1/10/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

public enum PagingMenuItemSize {
    
    case fixed(width: CGFloat, height: CGFloat)
    
    // Tries to fit all menu items inside the bounds of the screen.
    // If the item can't fit, the items will scroll as normal and
    // set the menu items width to `minWidth`.
    case sizeToFit(minWidth: CGFloat, height: CGFloat)
}

public extension PagingMenuItemSize {
    
    public var width: CGFloat {
        switch self {
        case let .fixed(width, _):
            return width
        case let .sizeToFit(minWidth, _):
            return minWidth
        }
    }
        
    public var height: CGFloat {
        switch self {
        case let .fixed(_, height):
            return height
        case let .sizeToFit(_, height):
            return height
        }
    }
}
