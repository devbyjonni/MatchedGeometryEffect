//
//  ContentView.swift
//  MatchedGeometryEffect
//
//  Created by Jonni Akesson on 2022-10-12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isClicked = false
    @Namespace private var nameSpace
    
    var body: some View {
        VStack {
            if !isClicked {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .overlay {
                        Image(systemName: "flame.fill")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    .matchedGeometryEffect(id: "rectangle", in: nameSpace)
                    .frame(width: 100, height: 100)
            }
            Spacer()
            
            if isClicked {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .overlay {
                        Image(systemName: "flame.fill")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    .matchedGeometryEffect(id: "rectangle", in: nameSpace)
                    .frame(width: 200, height: 200)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
        .onTapGesture {
            withAnimation {
                isClicked.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
