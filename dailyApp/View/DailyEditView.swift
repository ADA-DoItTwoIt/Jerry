//
//  ViewThree.swift
//  dailyApp
//
//  Created by 주환 on 2023/04/12.
//
import SwiftUI

struct DailyEditView: View {
    var title: String
    var detail: String
        
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .padding([.vertical, .horizontal], 15)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(detail)
                .padding([.vertical, .horizontal], 15)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray)
            Spacer()
        }
    }
}

struct ViewThree_Previews: PreviewProvider {
    static var previews: some View {
        DailyEditView(title: "ㅎㅇ", detail: "detail")
    }
}



