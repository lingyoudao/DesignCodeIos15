//
//  PreferenceKeys.swift
//  DesignCodeIos15
//
//  Created by 凌有道 on 2025/6/7.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey{
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
