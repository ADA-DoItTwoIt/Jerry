//
//  test.swift
//  dailyApp
//
//  Created by 주환 on 2023/04/08.
//

import SwiftUI

struct NewStoryView: View {

    @State private var showModal: Bool = false

    var body: some View {
        VStack {
            Image(systemName: "plus")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 100, height: 100, alignment: .center)
                .padding(.vertical, 20)
                .onTapGesture {
                    showModal = true
                }
                .fullScreenCover(isPresented: $showModal, content: {
                    CreateStoryOne(showModal: $showModal)
                })
            Text("+를 눌러서 새 이야기를 시작하세요")
                .foregroundColor(.gray)
        }

    }

}





//struct NewStoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewStoryView()
//    }
//}
