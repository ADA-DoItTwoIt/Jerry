//
//  ModalView.swift
//  dailyApp
//
//  Created by 주환 on 2023/03/19.
//

import SwiftUI

struct ModalView: View {
    
    @Environment(\.presentationMode) var presentation
    
    @Binding var isShown: Bool
    
    var body: some View {
        VStack {
//            Spacer()
            Button(action: {
                presentation.wrappedValue.dismiss()
            }) {
                Text("앱 설정").bold()
            }
            .frame(width: 150, height: 30, alignment: .center)
            //                .background(RoundedRectangle(cornerRadius: 40).fill(Color.orange))
            .font(.system(size: 16))
            .foregroundColor(Color.black)
            .padding(.vertical, 10)
            
            Button(action: {
                presentation.wrappedValue.dismiss()
            }) {
                Text("이 이야기").bold()
            }
            .frame(width: 150, height: 30, alignment: .center)
//            .background(RoundedRectangle(cornerRadius: 40).fill(Color.orange))
            .font(.system(size: 16))
            .foregroundColor(Color.black)
            .padding(.vertical, 20)
            
            Divider()
                .padding(.vertical, 15)
                .frame(width: 150, height: 30, alignment: .center)
            
            Button(action: {
                presentation.wrappedValue.dismiss()
            }) {
                Text("모든 이야기").bold()
            }
            .frame(width: 150, height: 30, alignment: .center)
            //                .background(RoundedRectangle(cornerRadius: 40).fill(Color.orange))
            .font(.system(size: 16))
            .foregroundColor(Color.black)
            .padding(.vertical,15)
            
            Divider()
                .padding(.vertical, 15)
                .frame(width: 150, height: 30, alignment: .center)
            
            Button(action: {
                presentation.wrappedValue.dismiss()
            }) {
                Text("검색").bold()
            }
            .frame(width: 150, height: 30, alignment: .center)
            //                .background(RoundedRectangle(cornerRadius: 40).fill(Color.orange))
            .font(.system(size: 16))
            .foregroundColor(Color.black)
            .padding(.vertical,15)
            
            Button(action: {
                presentation.wrappedValue.dismiss()
            }) {
                Text("글 추가").bold()
            }
            .frame(width: 150, height: 30, alignment: .center)
            //                .background(RoundedRectangle(cornerRadius: 40).fill(Color.orange))
            .font(.system(size: 16))
            .foregroundColor(Color.purple)
            .padding(.vertical, 15)
            
        }.background(Color.white)
            .padding(.vertical, 120)
        addButtonView(showModel: $isShown)
    }
    
    
}
