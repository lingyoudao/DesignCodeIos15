//
//  BlobView.swift
//  DesignCodeIos15
//
//  Created by 凌有道 on 2025/4/20.
//

import SwiftUI

struct BlobView: View {
    var body: some View {
        TimelineView(.animation) { timeline in
            let now = timeline.date.timeIntervalSinceReferenceDate
            let angle = Angle.degrees (now.remainder(dividingBy: 3) * 60)
            let x = cos(angle.radians)
                Text("value: \(x)")
            let angle2 = Angle.degrees (now.remainder(dividingBy: 6) * 10)
            let x2 = cos(angle2.radians)
            Canvas{ context, size in
                context.fill(path(in: CGRect(x: 0, y: 0, width: size.width, height: size.height), x: x, x2: x2), with: .linearGradient(Gradient(colors: [.pink, .blue]), startPoint:CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 800, y: 800 )))
                
            }
            .frame(width: 800, height: 600)
        }
            
    }
    func path(in rect: CGRect, x: Double, x2: Double) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.4793*width, y: 0.39651*height))
        path.addCurve(to: CGPoint(x: 0.63133*width*x, y: 0.73*height), control1: CGPoint(x: 0.07021*width, y: 0.59899*height*x2), control2: CGPoint(x: 0.63133*width, y: 0.73*height*x2))
        path.addCurve(to: CGPoint(x: 0.4793*width*x, y: 0.39651*height), control1: CGPoint(x: 0.63133*width*x2, y: 0.73*height*x), control2: CGPoint(x: 0.8884*width, y: 0.19404*height))
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
