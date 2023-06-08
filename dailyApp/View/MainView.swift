//
//  MainView.swift
//  dailyApp
//
//  Created by 주환 on 2023/04/04.
//

import SwiftUI

struct MainView: View {
    
    @Binding var myStory: Story
    @State var showDetail: Bool = false
    @State var dailys: [Daily] = []
    
    var body: some View {
        VStack {
            TitleView(myStory: $myStory)
            ScrollView {
                VStack {
                    myStory.list.isEmpty ? Text("여기를 아래로 당기면 글을 쓸 수 있어요").font(.custom(myregular, size: 13))
                        .foregroundColor(.gray):nil
                    ForEach(myStory.list, id: \.self) { daily in
                        NavigationLink(destination: WriteView(detail: daily.detail, title: daily.title, date: daily.date)) {
                            CellItemView(title: daily.title, date: daily.date)
                        }
                        .padding(10)
                    }
                }
                .background(
                    GeometryReader { reader -> Color in
                        let yOffset = reader.frame(in: .global).minY
                        //                            print("y offset index ==> \(yOffset)")
                        let threshold: CGFloat = 370 // Change this to set the threshold for when the modal should appear
                        if yOffset > threshold {
                            print("값 적용 됨")
                            DispatchQueue.main.async {
                                showDetail = true
                            }
                        }
                        return Color.clear
                    }
                )
            }
        }
        .backgroundStyle(Color.blue)
        .onAppear() {
            dailys = myStory.list
        }
        .onChange(of: dailys, perform: { newValue in
            myStory.list = dailys
        })
        
        
        .fullScreenCover(isPresented: $showDetail) {
            NewDailyView(show: $showDetail, myStory: $dailys)
        }
    }
    
    
    
    
}



private struct TitleView: View {
    
    @State var showModal = false
    @Binding var myStory: Story
    
    fileprivate var body: some View {
        VStack(alignment: .center) {
            Text(myStory.mainTitle)
                .font(.custom(mybold, size: 20))
                .padding(.vertical,15)
                .onTapGesture {
                    showModal = true
                }
                .fullScreenCover(isPresented: $showModal, content: {
                    StoryEditView(showModal: $showModal, currentStory: $myStory)
                })
            Text(myStory.mainDetail)
                .font(.custom(myregular, size: 15))
                .padding(.vertical,15)
                .foregroundColor(.gray)
                .onTapGesture {
                    showModal = true
                }
                .fullScreenCover(isPresented: $showModal, content: {
                    StoryEditView(showModal: $showModal, currentStory: $myStory)
                })
        }
        //        .background(UIColor.purple)
        Divider()
            .padding(10)
    }
}

struct CellItemView: View {
    var title: String
    var date: Date
    //    @State private var items = [Item]()
    
    
    var body: some View {
        ZStack {
            HStack {
                Text(title)
                    .font(.custom(myregular, size: 21.5))
                    .foregroundColor(Color.black)
                //                    .frame(width: .infinity)
                    .multilineTextAlignment(.leading)
                Spacer()
                Text(dateFormatter.string(from: date))
                    .foregroundColor(.gray)
                    .font(.custom(mylight, size: 14))
                    .multilineTextAlignment(.trailing)
            }
            .modifier(ModifierOne())
        }
        .modifier(ModifierOne())
    }
    
    
}


