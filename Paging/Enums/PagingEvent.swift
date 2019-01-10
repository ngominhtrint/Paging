//
//  PagingEvent.swift
//  Paging
//
//  Created by TriNgo on 1/10/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

enum PagingEvent<T: PagingItem> where T: Equatable {
    case scroll(progress: CGFloat)
    case initial(pagingItem: T)
    case select(pagingItem: T, direction: PagingDirection, animated: Bool)
    case finishScrolling
    case transitionSize
    case cancelScrolling
    case reload(contentOffset: CGPoint)
    case removeAll
    case reset(pagingItem: T)
}

extension PagingEvent {
    var animated: Bool? {
        switch self {
        case let .select(_, _, animated):
            return animated
        default:
            return nil
        }
    }
}
