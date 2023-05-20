//
//  WeakInstructor.swift
//  RetainCycleExplanation
//
//  Created by Yusuf Mert Yıldız on 20.05.2023.
//

import Foundation

class WeakInstructor {
    let name : String
    var course : WeakCourse?
    
    init(name: String) {
        self.name = name
    }
    
    deinit{
        print("Instructor\(name) deinitialized")
    }
}


class WeakCourse {
    let name : String
    let url : URL
    weak var instructor : WeakInstructor?
    
    init(name: String, url: URL) {
        self.name = name
        self.url = url
    }
    deinit{
        print("Course\(name) deinitialized")
    }
}
