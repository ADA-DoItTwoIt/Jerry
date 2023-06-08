//
//  ViewFive.swift
//  dailyApp
//
//  Created by 주환 on 2023/04/15.
//
import SwiftUI

struct CreateStoryFinal: View {
    @EnvironmentObject var stories: Stories
    
    @Binding var titleText: String
    @State var inputText = ""
    @Binding var showModel: Bool
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack {

                Text("이야기의 소제목을 입력해주세요.")
                    .font(.custom(myregular, size: 16))
                    .padding(.vertical,3)
                Text("다짐말을 써도 좋아요.")
                    .font(.custom(myregular, size: 16))
                TextField("예) 오늘도 수고했어!", text: $inputText)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 12)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 300, alignment: .center)
            }
//            .navigationTitle("MyApp")
            .navigationBarItems(leading: Button("뒤로") {
                presentationMode.wrappedValue.dismiss()
            }, trailing: Button(action: {
                let newSty = Story(mainTitle: titleText, mainDetail: inputText, list: [])
                stories.stories.insert(newSty, at: 0)
                self.showModel = false
            }, label: {
                Text("완료")
            }))

        }
        .navigationBarBackButtonHidden(true)
    }
    
}

