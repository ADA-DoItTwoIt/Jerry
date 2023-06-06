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
                    withAnimation {
                        showModel.toggle()
                    }
//                    print("DEBUG: btn select =\(showModel)")
                }, label: {
                    Text(btnTitle)
                        .font(.system(.title))
                        .frame(width: 77, height: 70)
                        .foregroundColor(Color.black)
                        .padding(.bottom, 7)
                        .rotationEffect(Angle(degrees: showModel ? rotationAngle: rotationAngle + 45))
                        .animation(.easeIn)
                    
                })
                .background(Color.white)
                .cornerRadius(38.5)
                .padding()
                .shadow(color: Color.black.opacity(showModel ? 0 : 0.3),
                        radius: 3,
                        x: 3,
                        y: 3)
                .onAppear() {
                    withAnimation(Animation.linear(duration: 1.0).repeatForever(autoreverses: false)) {
                        self.rotationAngle += showModel ? 45 : -45
                                }
                }
            }
        }
    }
    
}
