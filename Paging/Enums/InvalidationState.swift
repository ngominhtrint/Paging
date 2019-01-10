//
//  InvalidationState.swift
//  Paging
//
//  Created by TriNgo on 1/10/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import UIKit

// Used to represent what to invalidate in a collection view
// layout. We need to be able to invalidate the layout multiple times
// with different invalidation context before `invalidateLayout` is
// called and we can use this to determine exactly how
// much we need to invalidate by adding together the states each
// time a new context is invalidated.

public enum InvalidationState {
    case nothing
    case everything
    case sizes
    
    public init(_ invalidateContext: UICollectionViewLayoutInvalidationContext) {
        if invalidateContext.invalidateEverything {
            self = .everything
        } else if invalidateContext.invalidateDataSourceCounts {
            self = .everything
        } else if let context = invalidateContext as? PagingInvalidationContext {
            if context.invalidateSizes {
                self = .sizes
            } else {
                self = .nothing
            }
        } else {
            self = .nothing
        }
    }
    
    public static func +(lhs: InvalidationState, rhs: InvalidationState) -> InvalidationState {
        switch (lhs, rhs) {
        case (.everything, _), (_, .everything):
            return .everything
        case (.sizes, _), (_, .sizes):
            return .sizes
        case (.nothing, _), (_, .nothing):
            return .nothing
        default:
            return .everything
        }
    }
}
