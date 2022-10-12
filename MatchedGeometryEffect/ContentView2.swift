//
//  ContentView2.swift
//  MatchedGeometryEffect
//
//  Created by Jonni Akesson on 2022-10-12.
//

import SwiftUI

struct ContentView2: View {
    let cat = ["Home", "Trending", "Saves"]
    @State var isSelected = "Home"
    @Namespace private var nameSpace2
    
    var body: some View {
        HStack {
            ForEach(cat, id: \.self) { cat in
                ZStack {
                    if isSelected == cat {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray.opacity(0.1))
                            .matchedGeometryEffect(id: "cat_background", in: nameSpace2)
                    }
                    Text(cat)
                        .foregroundColor(isSelected == cat ? .accentColor : .primary)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .onTapGesture {
                    withAnimation(.spring()) {
                        isSelected = cat
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
