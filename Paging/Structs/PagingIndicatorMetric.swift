//
//  PagingIndicatorMetric.swift
//  Paging
//
//  Created by TriNgo on 1/9/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

struct PagingIndicatorMetric {
    
    enum Inset {
        case left(CGFloat)
        case right(CGFloat)
        case none
    }
    
    let frame: CGRect
    let insets: Inset
    let spacing: UIEdgeInsets
    
    var x: CGFloat {
        switch insets {
        case let .left(inset):
            return frame.origin.x + max(inset, spacing.left)
        default:
            return frame.origin.x + spacing.left
        }
    }
    
    var width: CGFloat {
        switch insets {
        case let .left(inset):
            return frame.size.width - max(inset, spacing.left) - spacing.right
        case let .right(inset):
            return frame.size.width - max(inset, spacing.right) - spacing.left
        case .none:
            return frame.size.width - spacing.left - spacing.right
        }
    }
    
}
