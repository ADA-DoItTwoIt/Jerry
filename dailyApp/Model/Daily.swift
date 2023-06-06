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
                                  list: testDailyArr)]
}

struct Story: Equatable {
    
    var mainTitle: String
    var mainDetail: String
    var list: [Daily]
    
}

let testDailyArr = [Daily(title: "z", date: "1", detail: "@@"), Daily(title: "x", date: "2", detail: "@@"), Daily(title: "c", date: "3", detail: "@@")]
let testStory = Story(mainTitle: "이야기 1\n", mainDetail: "여기를 눌러서 제목을 변경하세요\n", list: dailyMake())

struct Daily: Hashable {
    var title: String
    let date: String
    var detail: String
    
    }

func dailyMake() -> [Daily] {
    let daily = Daily(title: "z", date: "1", detail: "@@")
    let daily2 = Daily(title: "x", date: "2", detail: "@@")
    let daily3 = Daily(title: "c", date: "3", detail: "@@")
    
    let dayilies = [daily, daily2, daily3]
    
    return dayilies
    
}
