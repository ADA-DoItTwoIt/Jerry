//
//  writeView.swift
//  dailyApp
//
//  Created by 주환 on 2023/03/30.
//

import SwiftUI

struct WriteView: View {
    var detail: String
    var title: String
    var date: String
    
    @State var showModal = false
    
    init(detail: String, title: String, date: String) {
        self.date = date
        self.title = title
        self.detail = detail
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
//                .background(Color.blue)
                .padding([.vertical,.leading], 13)
                .onTapGesture {
                    showModal = true
                }
                .sheet(isPresented: $showModal) {
                    DailyEditView(title: title, detail: detail)
                }
            Text(date)
                .font(.title2)
                .padding([.vertical,.leading], 13)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.gray)
            Text(detail)
                .font(.body)
                .padding([.vertical,.leading], 13)
                .frame(maxWidth: .infinity, alignment: .leading)
                .onTapGesture {
                    showModal = true
                }
                .sheet(isPresented: $showModal) {
                    DailyEditView(title: title, detail: detail)
                }
            Spacer()
            HStack {
                Spacer()
                Button {
                    print("btn tapped!")
                } label: {
                    Label("", systemImage: "photo")
                }
                .padding([.horizontal,.trailing] ,5)
                Button {
                    print("btn tapped!")
                } label: {
                    Label("", systemImage: "square.and.arrow.up")
                }
                .padding([.horizontal,.trailing] ,5)
                Button {
                    print("btn tapped!")
                } label: {
                    Label("", systemImage: "ellipsis")
                }
                .rotationEffect(.degrees(90))
                .padding(.trailing ,15)
                .padding(.vertical, 5)
            }
        }
    }
    
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView(detail: "@@", title: "@@", date: "2")
    }
}
