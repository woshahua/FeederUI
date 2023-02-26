//
//  ContentView.swift
//  OpenZen
//
//  Created by gaohang on 2022/11/16.
//

import SwiftUI

struct ContentView: View {
    @State var datas: [FeedData] = [FeedData(id: "test", title: "test", description: "test"),
                                    FeedData(id: "test", title: "test", description: "test"),
                                    FeedData(id: "test", title: "test", description: "test")]
    @State var isShowingSheet = false
    var body: some View {
        VStack {
            ForEach ($datas) { data in
                SectionView(data: data).frame(height: 64.0).onTapGesture {
                    isShowingSheet = true
                }
            }
        }
        .padding()
        .sheet(isPresented: $isShowingSheet) {
            ZStack {
                Color(red: 0.95, green: 0.9, blue: 1)
                Text("This is my sheet. It could be a whole view, or just a text.")
            }
            .presentationDetents([.medium, .fraction(0.7)])
        }
    }
}
