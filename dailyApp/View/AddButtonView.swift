//
//  mainButtonView.swift
//  dailyApp
//
//  Created by 주환 on 2023/03/26.
//
//ellipsis

import SwiftUI

struct MainButtonView: View {
    @Binding var showModel: Bool
    
    var btnTitle:String {
        let btnTitle = showModel ? "+" : "•••"
        return btnTitle
    }
    
    @State var rotationAngle: Double = 0.0
    
    internal var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    withAnimation(Animation.linear(duration: 0.6)) {
                        showModel.toggle()
                    }
//                    print("DEBUG: btn select =\(showModel)")
                }, label: {
                    Text(btnTitle)
                        .font(showModel ? .title:.none)
                        .rotationEffect(Angle(degrees: showModel ? rotationAngle+45:rotationAngle))
                        .background(Circle()
                            .stroke(lineWidth: showModel ? 0:2)
                            .frame(width: 50,height: 50))
//                        .animation(.easeIn)
                    
                })
                .foregroundColor(showModel ? .black:.gray)
                .opacity(0.4)
                .frame(width: 50, height: 50)
                .background(Color.white)
                .cornerRadius(25)
                .padding([.trailing,.bottom],25)
            }
        }
    }
    
}
