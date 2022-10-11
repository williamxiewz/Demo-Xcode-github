//
//  InternalMenuItemViewModel.swift
//  Moments
//
//  Created by Jake Lin on 17/10/20.
//

import Foundation

// 内部菜单类型
enum InternalMenuItemType: String {
    case description
    case featureToggle
    case actionTrigger
}
/// 内部菜单VM
protocol InternalMenuItemViewModel {
    var type: InternalMenuItemType { get }
    var title: String { get }

    func select()
}

extension InternalMenuItemViewModel {
    func select() { }
}
