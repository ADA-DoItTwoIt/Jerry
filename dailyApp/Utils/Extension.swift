//
//  Extension.swift
//  dailyApp
//
//  Created by 주환 on 2023/05/03.
//

import Foundation

extension Notification.Name {
    static let updateItems = Notification.Name("updateItems")
}



//            .gesture(
//                DragGesture()
//                    .onChanged({ value in
//                        xOffset = value.translation.width
//                    })
//                    .onEnded { value in
//                        let offset = value.translation.width / UIScreen.main.bounds.width
////                        print("DEBUG: offset = \(offset)")
//                        let newIndex = (offset < -0.5) ? min(selection + 1, views.endIndex) : (offset > 0.5) ? max(selection - 1, 0) : selection
////                        print("DEBUG: newIndex = \(newIndex)")
//                        xOffset = -CGFloat(newIndex) * UIScreen.main.bounds.width
//                        selection = newIndex
//                        xOffset = 0
//                    })
