//
//  Modifier.swift
//  dailyApp
//
//  Created by 주환 on 2023/03/20.
//

import SwiftUI

struct ModifierOne: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .topLeading
            )
    }
}
