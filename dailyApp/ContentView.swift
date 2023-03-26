//
//  ContentView.swift
//  dailyApp
//
//  Created by 주환 on 2023/03/18.
//

import SwiftUI

struct Item {
    let uuid = UUID()
    let value: String
}

struct ContentView: View {
    let colors: [String] = ["1","2","3","4","5","6","7","8","9"]
    @State var showModel = false
    
    var body: some View {
        VStack {
            if showModel {
                ModalView(isShown: $showModel)
                    .foregroundColor(Color.red)
                    .transition(.opacity.animation(.easeInOut))
                //                    .background(Color.orange)
                //                addButtonView(showModel: $showModel)
                //                    .animation(, value: <#T##Equatable#>)
            }
            else {
                TitleView()
                ZStack {
                    ScrollView(showsIndicators: false) {
                        LazyVStack(pinnedViews: .sectionHeaders) {
                            ZStack {
                                VStack {
                                    ForEach(colors, id: \.self) { color in
                                        CellItemView(color: color)
                                            .padding(.horizontal, 10)
                                    }
                                    .padding(.vertical, 13)
                                    .padding(.horizontal, 13)
                                }
                            }
                        }
                    }
                    addButtonView(showModel: $showModel)
                    //                        .animation(<#T##animation: Animation?##Animation?#>, value: <#T##Equatable#>)
                }
            }
        }
    }
}


private struct TitleView: View {
    fileprivate var body: some View {
        VStack(alignment: .center) {
            Text("이야기 1\n")
                .font(.title)
                .font(.system(size: 20))
            Text("여기를 눌러서 제목을 변경하세요\n")
                .foregroundColor(.gray)
            
        }
        Divider()
            .padding(10)
    }
}


private struct CellItemView: View {
    private var color: String
    @State private var items = [Item]()
    
    fileprivate init(color: String) {
        self.color = color
    }
    
    fileprivate var body: some View {
        ZStack {
            HStack {
                Text("글 \(color)")
                    .font(.system(size: 21.5))
                    .frame(width: .infinity)
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("03.0\(color)")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
                    .frame(width: .infinity)
                    .multilineTextAlignment(.trailing)
            }
            .modifier(ModifierOne())
        }
        .modifier(ModifierOne())
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

