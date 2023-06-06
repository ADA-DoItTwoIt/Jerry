//
//  ViewOne.swift
//  dailyApp
//
//  Created by 주환 on 2023/04/04.
//

import SwiftUI

struct StoryEditView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showModal: Bool
    @Binding var currentStory: Story
    
    @State var title: String = ""
    @State var detail: String = ""
    
    
    var body: some View {
        NavigationView {
            VStack {
                TextField(currentStory.mainTitle, text: $title)
                    .font(.title)
                    .padding([.vertical, .horizontal], 13)
                TextField(currentStory.mainDetail, text: $detail)
                    .padding([.vertical, .horizontal], 13)
                    .foregroundColor(.gray)
                .navigationBarItems(leading: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("뒤로")
                        .foregroundColor(Color.blue)
                }), trailing: Button(action: {
                    currentStory = Story(mainTitle: title, mainDetail: detail, list: currentStory.list)
                    showModal = false
                }, label: {
                    Text("저장")
                }))

            }
            .onAppear() {
                title = currentStory.mainTitle
                detail = currentStory.mainDetail
            }
        }
    }
    
}

//struct ViewOne_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewOne(showModal: )
//    }
//}



