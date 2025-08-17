//
//  Course.swift
//  DesignCodeIos15
//
//  Created by 凌有道 on 2025/8/17.
//

import SwiftUI

struct Course: Identifiable {
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var logo: String
}

var courses = [
    Course(title: "SwiftUI for ios15", subtitle: "20 sections - 3hour", text: "Build an ios app for ios15 with  customer layout", image: "Illustration 5", logo: "Logo 2"),
    Course(title: "UI design for ios15", subtitle: "20 sections - 3hour", text: "Build an ios app for ios15 with  customer layout", image: "Illustration 3", logo: "Logo 4"),
    Course(title: "Flutter for ios15", subtitle: "20 sections - 3hour", text: "Build an ios app for ios15 with  customer layout", image: "Illustration 1", logo: "Logo 1"),
    Course(title: "React Hooks advanced", subtitle: "20 sections - 3hour", text: "Build an ios app for ios15 with  customer layout", image: "Illustration 2", logo: "Logo 3")
]
