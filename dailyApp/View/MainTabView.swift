//
//  ContentView.swift
//  dailyApp
//
//  Created by 주환 on 2023/03/18.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var stories: Stories
    
    @State var showBtnView = false
    @State var selection = 0
    
    var body: some View {
        if showBtnView {
            ZStack {
                StorySettingView(isMainView: $showBtnView, selection: $selection)
                MainButtonView(showModel: $showBtnView)
            }
        } else {
            NavigationStack {
                TabView(selection: $selection) {
                    ForEach(stories.stories.indices, id: \.self) { index in
                        MainView(myStory: $stories.stories[index])
                            .tag(index)
                    }
                    NewStoryView()
                        .tag(stories.stories.count)
                }
                .tabViewStyle(.page)
                .overlay {
                    MainButtonView(showModel: $showBtnView)
                }
            }
            .onChange(of: stories.stories.count, perform: { newValue in
                selection = 0
            })
        }
            
    }
    
}


struct MainTabView_Previews: PreviewProvider {
    @StateObject static var stories = Stories()
    static var previews: some View {
        MainTabView()
            .environmentObject(stories)
    }
}

