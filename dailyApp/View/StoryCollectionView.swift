//
//  StortCollectionView.swift
//  dailyApp
//
//  Created by 주환 on 2023/06/07.
//

import SwiftUI

struct StoryCollectionView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var stories: Stories
    
    var body: some View {
        NavigationStack {
            ForEach(stories.stories,id: \.self) { story in
                Text(story.mainTitle)
                    .font(.custom(myregular, size: 17))
                    .padding()
            }
            .navigationBarItems(leading: Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "plus")
                    .foregroundColor(.gray)
            }))
            .navigationBarItems(trailing: Button(action: {
                
            }, label: {
                Image(systemName: "ellipsis")
                    .rotationEffect(Angle(degrees: 90))
                    .foregroundColor(.gray)
            }))
        }
    }
}

struct StoryCollectionView_Previews: PreviewProvider {
    @StateObject static var stories = Stories()
    static var previews: some View {
        StoryCollectionView()
            .environmentObject(stories)
    }
}
