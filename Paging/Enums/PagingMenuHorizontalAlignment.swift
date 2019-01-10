//
//  PagingMenuHorizontalAlignment.swift
//  Paging
//
//  Created by TriNgo on 1/10/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

public enum PagingMenuHorizontalAlignment {
    
    case left
    
    // Allows all paging items to be centered within the paging menu
    // when PagingMenuItemSize is .fixed and the sum of the widths
    // of all the paging items are less than the paging menu
    case center
}
