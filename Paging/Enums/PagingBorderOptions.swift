//
//  PagingBorderOptions.swift
//  Paging
//
//  Created by TriNgo on 1/10/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import UIKit

public enum PagingBorderOptions {
    case hidden
    case visible(
        height: CGFloat,
        zIndex: Int,
        insets: UIEdgeInsets)
}
