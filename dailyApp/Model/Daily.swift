//
//  Daily.swift
//  dailyApp
//
//  Created by 주환 on 2023/03/26.
//

import Foundation

class Stories: ObservableObject {
    @Published var stories: [Story] = [Story(mainTitle: "이야기 1",
                                             mainDetail: "여기를 눌러서 제목을 변경하세요",
                                             list: []), Story(mainTitle: "이야기 1",
                                  mainDetail: "여기를 눌러서 제목을 변경하세요",
                                  list: testDailyArr)]
}

struct Story: Equatable,Hashable,Identifiable {
    var id: UUID
    
    var mainTitle: String
    var mainDetail: String
    var list: [Daily]
    init(mainTitle: String, mainDetail: String, list: [Daily]) {
        self.id = UUID()
        self.mainTitle = mainTitle
        self.mainDetail = mainDetail
        self.list = list
    }
    
}

let testDailyArr = [Daily(title: "z", date: Date(), detail: "@@"), Daily(title: "x", date: Date(), detail: "@@"), Daily(title: "c", date: Date(), detail: "@@")]
let testStory = Story(mainTitle: "이야기 1\n", mainDetail: "여기를 눌러서 제목을 변경하세요\n", list: dailyMake())

struct Daily: Hashable {
    var title: String
    let date: Date
    var detail: String
    
    }

func dailyMake() -> [Daily] {
    let daily = Daily(title: "z", date: Date(), detail: "@@")
    let daily2 = Daily(title: "x", date: Date(), detail: "@@")
    let daily3 = Daily(title: "c", date: Date(), detail: "@@")
    
    let dayilies = [daily, daily2, daily3]
    
    return dayilies
    
}
