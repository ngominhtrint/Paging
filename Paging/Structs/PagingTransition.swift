//
//  PagingTransition.swift
//  Paging
//
//  Created by TriNgo on 1/9/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import UIKit

struct PagingTransition: Equatable {
    let contentOffset: CGPoint
    let distance: CGFloat
    
    static func ==(lhs: PagingTransition, rhs: PagingTransition) -> Bool {
        return (lhs.contentOffset == rhs.contentOffset && lhs.distance == rhs.distance)
    }
}
