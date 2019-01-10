//
//  PagingMenuItemSource.swift
//  Paging
//
//  Created by TriNgo on 1/10/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

public enum PagingMenuItemSource {
    case `class`(type: PagingCell.Type)
    case nib(nib: UINib)
}
