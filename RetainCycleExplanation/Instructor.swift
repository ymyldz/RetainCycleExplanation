//
//  Instructor.swift
//  RetainCycleExplanation
//
//  Created by Yusuf Mert Yıldız on 20.05.2023.
//

import Foundation

class Instructor {
    let name : String
    var course : Course?
    
    init(name: String) {
        self.name = name
    }
    
    deinit{
        print("Instructor\(name) deinitialized")
    }
}


class Course {
    let name : String
    let url : URL
    var instructor : Instructor?
    
    init(name: String, url: URL) {
        self.name = name
        self.url = url
    }
    deinit{
        print("Course\(name) deinitialized")
    }
}
