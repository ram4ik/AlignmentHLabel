//
//  ContentView.swift
//  AlignmentHLabel
//
//  Created by Ramill Ibragimov on 08.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct HLabel: View {
    let text: String
    let backgroundColor: Color
    let width: CGFloat
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .frame(width: width)
            .padding(.vertical)
            .background(backgroundColor)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HLabel(text: "0", backgroundColor: .gray, width: 100)
            
            HLabel(text: "1", backgroundColor: .red, width: 120)
                .alignmentGuide(.leading, computeValue: { $0[.leading] })
            
            HLabel(text: "2", backgroundColor: .yellow, width: 140)
                .alignmentGuide(.leading, computeValue: { $0[HorizontalAlignment.center] })
            
            HLabel(text: "3", backgroundColor: .green, width: 160)
                .alignmentGuide(.leading, computeValue: { $0[.trailing] })
            
            HLabel(text: "4", backgroundColor: .blue, width: 180)
                .alignmentGuide(.leading, computeValue: { _ in 60 })
            
            HLabel(text: "5", backgroundColor: .purple, width: 200)
                .alignmentGuide(.trailing, computeValue: { _ in 60 })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
