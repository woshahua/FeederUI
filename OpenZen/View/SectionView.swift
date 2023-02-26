//
//  SectionView.swift
//  OpenZen
//
//  Created by gaohang on 2022/11/30.
//

import SwiftUI
import SFSafeSymbols

struct SectionView: View {
    @Binding var data: FeedData
    var body: some View {
        HStack {
            Image(systemSymbol: ._00Circle)
            Text(data.title)
            Text(data.description)
            Spacer()
        }
    }
}

struct FeedData: Identifiable {
    let id: String
    let title: String
    let description: String
}
