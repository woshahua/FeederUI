//
//  SectionView.swift
//  OpenZen
//
//  Created by gaohang on 2022/11/30.
//

import SwiftUI

struct SectionView: View {
    // TODO: how to creaate mock data randomly
    @State let data: [FeedData] = [FeedData(id: "1", title: "2", description: "345")]
    var body: some View {
        HStack {
            Image(systemName: "")
        }
    }
}

struct FeedData: Codable {
    let id: String
    let title: String
    let description: String
}
