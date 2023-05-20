//
//  ViewController.swift
//  RetainCycleExplanation
//
//  Created by Yusuf Mert Yıldız on 20.05.2023.
//

import UIKit

class ViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: Strong Reference
//        var course: Course? = Course(name: "iOS Course", url: URL(string: "www.google.com")!)
//        var instructor : Instructor? = Instructor(name: "Yusuf Mert Yıldız")
//
//        // strong reference , retain cycle
//        course?.instructor = instructor
//        instructor?.course = course
//
//        course = nil
//        instructor = nil
        
// MARK: Weak Referance
//        var course: WeakCourse? = WeakCourse(name: "iOS Course", url: URL(string: "www.google.com")!)
//        var instructor : WeakInstructor? = WeakInstructor(name: "Yusuf Mert Yıldız")
//
//        // Weak referance
//        course?.instructor = instructor
//        instructor?.course = course
//
//        course = nil
//        instructor = nil
        
        
        // MARK: Weak Self
        
        var course: WeakCourse2? = WeakCourse2(name: "iOS Course", url: URL(string: "www.google.com")!)
        var instructor : WeakInstructor2? = WeakInstructor2(name: "Yusuf Mert Yıldız")
        
        // Weak referance
        course!.instructor = instructor
        instructor!.course = course
        
        course?.launch(launchedCourse: LaunchedCourse(title: "iOS"))
        course = nil
        instructor = nil
        
        
    }
 
}
