//
//  File.swift
//  dailyApp
//
//  Created by 주환 on 2023/04/12.
//

import SwiftUI

struct CreateStoryOne: View {
    @Binding var showModal: Bool

    @State var inputText = ""
//    @State var nextView: Bool = false
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack {

                Text("새 이야기를 추가합니다.")
                    .padding(.vertical,3)
                Text("이야기의 제목을 입력해주세요.")
                TextField("예) 일기, 일상을 끄적이다", text: $inputText)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 12)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 300, alignment: .center)
            }
//            .navigationTitle("MyApp")
            .navigationBarItems(leading: Button("뒤로") {
                presentationMode.wrappedValue.dismiss()
            }, trailing: Button(action: {
                self.showModal = true
            }, label: {
                NavigationLink(destination: CreateStoryFinal(titleText: $inputText, showModel: $showModal)) {
                Text("다음")
            }
            }))
        }
        .navigationBarBackButtonHidden(true)
//        .item
    }
}


//struct ViewFour_Previews: PreviewProvider {
//    static var previews: some View {
//        CreateStoryOne()
//    }
//}
