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
    var body: some View {
        VStack {
            ForEach ($datas) { data in
                SectionView(data: data).frame(height: 64.0)
            }
        }
        .padding()
    }
}
