//
//  BlobView.swift
//  DesignCodeIos15
//
//  Created by 凌有道 on 2025/4/20.
//

import SwiftUI

struct BlobView: View {
    var body: some View {
        Canvas{ context, size in
            context.fill(path(in: CGRect(x: 0, y: 0, width: size.width, height: size.height)), with: .linearGradient(Gradient(colors: [.pink, .blue]), startPoint:CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 400, y: 400 )))
            
        }
        .frame(width: 400, height: 400)
            
    }
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.4793*width, y: 0.39651*height))
        path.addCurve(to: CGPoint(x: 0.63133*width, y: 0.73*height), control1: CGPoint(x: 0.07021*width, y: 0.59899*height), control2: CGPoint(x: 0.63133*width, y: 0.73*height))
        path.addCurve(to: CGPoint(x: 0.4793*width, y: 0.39651*height), control1: CGPoint(x: 0.63133*width, y: 0.73*height), control2: CGPoint(x: 0.8884*width, y: 0.19404*height))
        path.closeSubpath()
        return path
    }
}

struct BlobView_Previews: PreviewProvider {
    static var previews: some View {
        BlobView()
    }
}
struct BlobShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.4793*width, y: 0.39651*height))
        path.addCurve(to: CGPoint(x: 0.63133*width, y: 0.73*height), control1: CGPoint(x: 0.07021*width, y: 0.59899*height), control2: CGPoint(x: 0.63133*width, y: 0.73*height))
        path.addCurve(to: CGPoint(x: 0.4793*width, y: 0.39651*height), control1: CGPoint(x: 0.63133*width, y: 0.73*height), control2: CGPoint(x: 0.8884*width, y: 0.19404*height))
        path.closeSubpath()
        return path
    }
}
