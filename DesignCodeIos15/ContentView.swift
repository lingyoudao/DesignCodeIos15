//
//  ContentView.swift
//  DesignCodeIos15
//
//  Created by 凌有道 on 2024/12/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            VStack(alignment: .leading, spacing: 8.0) {
                Spacer()
                Image("Logo 2")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 26.0, height: 26.0)
                    .cornerRadius(10)
                    .padding(9)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .strokeStyle(cornerRadius: 16)
//                    .modifier(StrokeStyle())
                Text("SwiftUI for iOS 15")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                //.primary颜色，在light模式下黑，dark mode下白
                
                Text(/*@START_MENU_TOKEN@*/"20 sections - 3 hours"/*@END_MENU_TOKEN@*/)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
                Text("Builld an iOS app for iOS15 with custom layouts, animations and ...")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.secondary)
                    
            }
            .padding(.all, 20.0)
            .padding(.vertical, 20)
            .frame(height: 350.0)
            .background(.ultraThinMaterial)
            //.cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
            //.modifier(StrokeStyle())
            .strokeStyle()
            .padding(.horizontal, 20)
            .background(Image("Blob 1").offset(x: 250, y:   -100))
            .overlay(
                Image("Illustration 5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:230)
                    .offset(x: 32, y: -80)
            )
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
                .previewDevice("iPhone 12")
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 12")
           
        }
    }
}
