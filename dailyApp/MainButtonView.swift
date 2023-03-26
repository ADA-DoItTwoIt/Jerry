//
//  mainButtonView.swift
//  dailyApp
//
//  Created by 주환 on 2023/03/26.
//

import SwiftUI

struct addButtonView: View {
    @Binding var showModel: Bool
    
    var btnTitle:String {
        let btnTitle = showModel ? "+" : "•••"
        return btnTitle
    }
    @State var rotationAngle:Double = 0.0
    
    internal var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    self.showModel.toggle()
                }, label: {
                    Text(btnTitle)
                        .font(.system(.title))
                        .frame(width: 77, height: 70)
                        .foregroundColor(Color.black)
                        .padding(.bottom, 7)
                        .rotationEffect(Angle(degrees: rotationAngle))
                        .animation(.easeInOut)
                    
                })
                .background(Color.white)
                .cornerRadius(38.5)
                .padding()
                .shadow(color: Color.black.opacity(showModel ? 0 : 0.3),
                        radius: 3,
                        x: 3,
                        y: 3)
                .onAppear() {
                    withAnimation(Animation.linear(duration: 2.0).repeatForever(autoreverses: false)) {
                        self.rotationAngle += showModel ? 45 : 0
                                }
                }
//                .overlay(RoundedRectangle(cornerRadius: 50)
//                    .stroke(.black, lineWidth: 2))
                
                
            }
        }
    }
    
}
