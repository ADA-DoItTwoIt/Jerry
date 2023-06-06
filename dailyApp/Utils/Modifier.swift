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
//                maxHeight: .infinity,
                alignment: .topLeading
            )
    }
}

var dateFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    formatter.timeStyle = .medium
    return formatter
}


class StoryData: ObservableObject {
    @Published var story: Story = Story(mainTitle: "", mainDetail: "", list: [])
}

