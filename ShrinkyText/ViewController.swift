//
//  ViewController.swift
//  ShrinkyText
//
//  Created by K Y on 10/23/19.
//  Copyright © 2019 K Y. All rights reserved.
//

import UIKit

private let stringNum = 3

private let longStrings = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
]

private let shortStrings = [
    "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
    "Creation timelines for the standard lorem ipsum passage vary, with some citing the 15th century and others the 20th.",
    "From its medieval origins to the digital era, learn everything there is to know about the ubiquitous lorem ipsum passage."
]

class ViewController: UIViewController {
    
    // MARK: - Storyboard Outlets
    
    @IBOutlet var label1: UILabel!{
        didSet {
            label1.numberOfLines = 0
        }
    }
    @IBOutlet var label2: UILabel! {
        didSet {
            label2.numberOfLines = 0
        }
    }
    
    // MARK: - Lifecycle Methods
    
    @IBAction func growAction(_ sender: Any) {
        let i = Int.random(in: 0..<stringNum)
        label1.text = longStrings[i]
        label2.text = shortStrings[i]
    }
    
    @IBAction func shrinkAction(_ sender: Any) {
        label1.text = "Lorem Ipsum\nMeow meow meow meow meow"
        label2.text = "sup rod"
    }
    
}

