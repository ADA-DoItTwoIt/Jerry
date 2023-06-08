//
//  NewDailyView.swift
//  dailyApp
//
//  Created by 주환 on 2023/04/22.
//
import Foundation
import SwiftUI

struct NewDailyView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var title: String = ""
    @State var detail: String = ""
    @Binding var show: Bool
    @Binding var myStory: [Daily]

    var body: some View {
        NavigationView {
            VStack {
                TextField("제목", text: $title)
                    .padding([.horizontal])
                Divider()
                    .padding(10)
                TextField("내용을 입력하세요", text: $detail)
                    .padding([.horizontal,.vertical])
                Spacer()
            }
            .navigationBarItems(leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("취소")
                    .foregroundColor(Color.gray)
            }), trailing: Button(action: {
                let daily = Daily(title: title, date: Date(), detail: detail)
                print("DEBUG: new Daily = \(daily)")
                myStory.append(daily)
                print("DEBUG: append = \(myStory)")
                show = false
//                NotificationCenter.default.post(name: .updateItems, object: nil)
            }, label: {
                Text("완료")
            }))
        }
    }
}
