//
//  ModalView.swift
//  dailyApp
//
//  Created by 주환 on 2023/03/19.
//

import SwiftUI

struct ModalView: View {
    
    @Environment(\.presentationMode) var presentation
    
//    @Binding var isShown: Bool
    
    var body: some View {
            
            VStack {
                Text("Modal view 등장")
                Button(action: {
                    presentation.wrappedValue.dismiss()
                }) {
                    Text("닫기").bold()
                }
                .frame(width: 150, height: 30, alignment: .center)
                .background(RoundedRectangle(cornerRadius: 40).fill(Color.orange))
                .font(.system(size: 16))
                .foregroundColor(Color.white)
            }.background(Color.white)
    }
    
}
